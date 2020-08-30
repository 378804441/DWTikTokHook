
#include <AVFoundation/AVFoundation.h>
#include <UIKit/UIKit.h>



// 强制返回TikTok原本BundleId，为了解决重签名后无法登陆问题
%hook TTInstallSandBoxHelper 

+ (id)bundleIdentifier{
    return @"com.zhiliaoapp.musically";
}

+ (BOOL)isAppStoreChannel{
    return true;
}

%end



// 重选地区列表VC
@class DWConfigVC;
%subclass DWConfigVC : UIViewController <UITableViewDelegate, UITableViewDataSource>

%property (nonatomic, strong) NSArray *locations;

- (void)viewDidLoad {
    %orig;
    
    UIViewController *vc = ((UIViewController *)self);

    vc.view.backgroundColor = [UIColor whiteColor];

    BOOL isIPhoneX = ([UIApplication sharedApplication].statusBarFrame.size.height > 20 ? YES : NO);
    CGFloat statusHeight = (isIPhoneX ? 44 : 20);
    
    UIView *naviView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, vc.view.frame.size.width, 44+statusHeight)];
      

    UILabel *titleLabel      = [[UILabel alloc] initWithFrame:CGRectMake(0, statusHeight, vc.view.frame.size.width, 44)];
    titleLabel.text          = @"选择区域";
    titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.textColor     = [UIColor blackColor];
    [naviView addSubview:titleLabel];


    UIButton *btn       = [[UIButton alloc] initWithFrame:CGRectMake(6, statusHeight + 7, 60, 30)];
    btn.titleLabel.font = [UIFont systemFontOfSize:16];
    [btn setTitle:@"退回" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(clickBackButton) forControlEvents:UIControlEventTouchUpInside];
    [naviView addSubview:btn];


    [vc.view addSubview:naviView];
    

    UITableView *tb = [[UITableView alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(naviView.frame), naviView.frame.size.width, vc.view.frame.size.height - naviView.frame.size.height)];
    tb.tableFooterView = [UIView new];
    [vc.view addSubview:tb];
    [tb setValue:self forKey:@"delegate"];
    [tb setValue:self forKey:@"dataSource"];


    NSArray *tempLocations =  @[@{@"title":@"日本", @"isoCode":@"Japan", @"mccCode":@"440", @"mncCode":@"01"},
                                @{@"title":@"美国", @"isoCode":@"United States", @"mccCode":@"310", @"mncCode":@"026"},
                                @{@"title":@"宇宙韩", @"isoCode":@"KR", @"mccCode":@"450", @"mncCode":@"02"},
                                @{@"title":@"呆湾", @"isoCode":@"TW", @"mccCode":@"466", @"mncCode":@"01"}];

    [(UIViewController *)self setValue:tempLocations forKey:@"locations"];
}


%new
- (void)clickBackButton{
    [((UIViewController *)self).navigationController popViewControllerAnimated:YES];
}


/** tabelView delegate */

%new
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return ((NSArray *)[(UIViewController *)self valueForKey:@"locations"]).count;
}

%new
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 54;
}

%new
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    NSArray *tempLocations = [(UIViewController *)self valueForKey:@"locations"];
    NSDictionary *dic = [tempLocations objectAtIndex:indexPath.row];


    static NSString *CellIndentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIndentifier];
    if(cell == nil){
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIndentifier];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.textLabel.text = dic[@"title"];

    cell.accessoryType = UITableViewCellAccessoryNone;
    NSString *saveMccCode = [[NSUserDefaults standardUserDefaults] objectForKey:@"dw_mccCode"];

    if ([saveMccCode isEqualToString:dic[@"mccCode"]]) {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    }
    
    return cell;
}


%new
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSArray *tempLocations = [(UIViewController *)self valueForKey:@"locations"];
    NSDictionary *dic      = [tempLocations objectAtIndex:indexPath.row];

    [[NSUserDefaults standardUserDefaults] setValue:dic[@"isoCode"] forKey:@"dw_isoCode"];
    [[NSUserDefaults standardUserDefaults] setValue:dic[@"mccCode"] forKey:@"dw_mccCode"];
    [[NSUserDefaults standardUserDefaults] setValue:dic[@"mncCode"] forKey:@"dw_mncCode"];
    [[NSUserDefaults standardUserDefaults] synchronize];

    [tableView reloadData];
}


%end




// 运营商信息hook
%hook CTCarrier


// code 
- (NSString *)isoCountryCode{
    NSString *isoCode = [[NSUserDefaults standardUserDefaults] objectForKey:@"dw_isoCode"];

    // 默认日区
    if (isoCode.length == 0) { 
        isoCode = @"Japan";
        [[NSUserDefaults standardUserDefaults] setValue:isoCode forKey:@"dw_isoCode"];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
    return isoCode;
}


// mcc
- (NSString *)mobileCountryCode{
    NSString *mccCode = [[NSUserDefaults standardUserDefaults] objectForKey:@"dw_mccCode"];
    %log((NSString *)@"imobileCountryCode数据 ~~~~~~~~", (NSString *)mccCode);

    // 默认日区
    if (mccCode.length == 0) { 
        mccCode = @"440";
        [[NSUserDefaults standardUserDefaults] setValue:mccCode forKey:@"dw_mccCode"];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
    return mccCode;
}


// mnc
- (NSString *)mobileNetworkCode{
    NSString *mncCode = [[NSUserDefaults standardUserDefaults] objectForKey:@"dw_mncCode"];
    %log((NSString *)@"mobileNetworkCode ~~~~~~~~", (NSString *)mncCode);

    // 默认日区
    if (mncCode.length == 0) { 
        mncCode = @"01";
        [[NSUserDefaults standardUserDefaults] setValue:mncCode forKey:@"dw_mncCode"];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
    return mncCode;
}


/* 蜂窝服务提供商名称 (经测试这个不是必改项目)
- (NSString *)carrierName{
    return @"DoCoMo";
}
*/

%end



// 设置入口
@class AWESettingBaseViewController;

%hook  AWESettingBaseViewController

- (void)viewDidLoad{
    %orig;
    UITableView *tb    =  [(UIViewController *)self valueForKey:@"tableView"];
    UIView *headView   = [[UIView alloc] initWithFrame:CGRectMake(0, 0, ((UIViewController *)self).view.frame.size.width, 64)];
    UILabel *textField = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, headView.frame.size.width - 2*15, headView.frame.size.height)];
    textField.font = [UIFont systemFontOfSize:14];
    textField.text = @"选择TikTok区域";
    textField.userInteractionEnabled = false;
    [headView addSubview:textField];
    tb.tableHeaderView = headView;

    tb.tableHeaderView.userInteractionEnabled = YES;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(clickHead)];
    [tb.tableHeaderView addGestureRecognizer:tap];
}


%new
- (void)clickHead{
    DWConfigVC *objc = [[%c(DWConfigVC) alloc] init];
    [((UIViewController *)self).navigationController pushViewController:(UIViewController *)objc animated:true]; 
}


%end





























