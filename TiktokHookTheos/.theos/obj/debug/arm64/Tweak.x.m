#line 1 "Tweak.x"

#include <AVFoundation/AVFoundation.h>
#include <UIKit/UIKit.h>





#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class DWConfigVC; @class CTCarrier; @class AWESettingBaseViewController; @class UIViewController; @class TTInstallSandBoxHelper; 
static id (*_logos_meta_orig$_ungrouped$TTInstallSandBoxHelper$bundleIdentifier)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static id _logos_meta_method$_ungrouped$TTInstallSandBoxHelper$bundleIdentifier(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_meta_orig$_ungrouped$TTInstallSandBoxHelper$isAppStoreChannel)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static BOOL _logos_meta_method$_ungrouped$TTInstallSandBoxHelper$isAppStoreChannel(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$DWConfigVC$viewDidLoad)(_LOGOS_SELF_TYPE_NORMAL DWConfigVC* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$DWConfigVC$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL DWConfigVC* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$DWConfigVC$clickBackButton(_LOGOS_SELF_TYPE_NORMAL DWConfigVC* _LOGOS_SELF_CONST, SEL); static NSInteger _logos_method$_ungrouped$DWConfigVC$tableView$numberOfRowsInSection$(_LOGOS_SELF_TYPE_NORMAL DWConfigVC* _LOGOS_SELF_CONST, SEL, UITableView *, NSInteger); static CGFloat _logos_method$_ungrouped$DWConfigVC$tableView$heightForRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL DWConfigVC* _LOGOS_SELF_CONST, SEL, UITableView *, NSIndexPath *); static UITableViewCell * _logos_method$_ungrouped$DWConfigVC$tableView$cellForRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL DWConfigVC* _LOGOS_SELF_CONST, SEL, UITableView *, NSIndexPath *); static void _logos_method$_ungrouped$DWConfigVC$tableView$didSelectRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL DWConfigVC* _LOGOS_SELF_CONST, SEL, UITableView *, NSIndexPath *); static NSString * (*_logos_orig$_ungrouped$CTCarrier$isoCountryCode)(_LOGOS_SELF_TYPE_NORMAL CTCarrier* _LOGOS_SELF_CONST, SEL); static NSString * _logos_method$_ungrouped$CTCarrier$isoCountryCode(_LOGOS_SELF_TYPE_NORMAL CTCarrier* _LOGOS_SELF_CONST, SEL); static NSString * (*_logos_orig$_ungrouped$CTCarrier$mobileCountryCode)(_LOGOS_SELF_TYPE_NORMAL CTCarrier* _LOGOS_SELF_CONST, SEL); static NSString * _logos_method$_ungrouped$CTCarrier$mobileCountryCode(_LOGOS_SELF_TYPE_NORMAL CTCarrier* _LOGOS_SELF_CONST, SEL); static NSString * (*_logos_orig$_ungrouped$CTCarrier$mobileNetworkCode)(_LOGOS_SELF_TYPE_NORMAL CTCarrier* _LOGOS_SELF_CONST, SEL); static NSString * _logos_method$_ungrouped$CTCarrier$mobileNetworkCode(_LOGOS_SELF_TYPE_NORMAL CTCarrier* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$AWESettingBaseViewController$viewDidLoad)(_LOGOS_SELF_TYPE_NORMAL AWESettingBaseViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$AWESettingBaseViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL AWESettingBaseViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$AWESettingBaseViewController$clickHead(_LOGOS_SELF_TYPE_NORMAL AWESettingBaseViewController* _LOGOS_SELF_CONST, SEL); 
static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$DWConfigVC(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("DWConfigVC"); } return _klass; }
#line 8 "Tweak.x"
 

static id _logos_meta_method$_ungrouped$TTInstallSandBoxHelper$bundleIdentifier(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    return @"com.zhiliaoapp.musically";
}

static BOOL _logos_meta_method$_ungrouped$TTInstallSandBoxHelper$isAppStoreChannel(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    return true;
}






@class DWConfigVC;


__attribute__((used)) static NSArray * _logos_method$_ungrouped$DWConfigVC$locations(DWConfigVC * __unused self, SEL __unused _cmd) { return (NSArray *)objc_getAssociatedObject(self, (void *)_logos_method$_ungrouped$DWConfigVC$locations); }; __attribute__((used)) static void _logos_method$_ungrouped$DWConfigVC$setLocations(DWConfigVC * __unused self, SEL __unused _cmd, NSArray * rawValue) { objc_setAssociatedObject(self, (void *)_logos_method$_ungrouped$DWConfigVC$locations, rawValue, OBJC_ASSOCIATION_RETAIN_NONATOMIC); }

static void _logos_method$_ungrouped$DWConfigVC$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL DWConfigVC* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    _logos_orig$_ungrouped$DWConfigVC$viewDidLoad(self, _cmd);
    
    UIViewController *vc = ((UIViewController *)self);

    vc.view.backgroundColor = [UIColor whiteColor];

    BOOL isIPhoneX = ([UIApplication sharedApplication].statusBarFrame.size.height > 20 ? YES : NO);
    CGFloat statusHeight = (isIPhoneX ? 44 : 20);
    
    UIView *naviView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, vc.view.frame.size.width, 44+statusHeight)];
      

    UILabel *titleLabel      = [[UILabel alloc] initWithFrame:CGRectMake(0, statusHeight, vc.view.frame.size.width, 44)];
    titleLabel.text 		 = @"选择区域";
    titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.textColor 	 = [UIColor blackColor];
    [naviView addSubview:titleLabel];


    UIButton *btn 	    = [[UIButton alloc] initWithFrame:CGRectMake(6, statusHeight + 7, 60, 30)];
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


    NSArray *tempLocations =  @[@{@"title":@"日本", @"isoCode":@"JP", @"mccCode":@"440", @"mncCode":@"01"},
    							@{@"title":@"美国", @"isoCode":@"US", @"mccCode":@"310", @"mncCode":@"032"},
      							@{@"title":@"宇宙韩", @"isoCode":@"KR", @"mccCode":@"450", @"mncCode":@"02"},
      							@{@"title":@"呆湾", @"isoCode":@"TW", @"mccCode":@"466", @"mncCode":@"01"}];

	[(UIViewController *)self setValue:tempLocations forKey:@"locations"];
}



static void _logos_method$_ungrouped$DWConfigVC$clickBackButton(_LOGOS_SELF_TYPE_NORMAL DWConfigVC* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    [((UIViewController *)self).navigationController popViewControllerAnimated:YES];
}





static NSInteger _logos_method$_ungrouped$DWConfigVC$tableView$numberOfRowsInSection$(_LOGOS_SELF_TYPE_NORMAL DWConfigVC* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * tableView, NSInteger section){
    return ((NSArray *)[(UIViewController *)self valueForKey:@"locations"]).count;
}


static CGFloat _logos_method$_ungrouped$DWConfigVC$tableView$heightForRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL DWConfigVC* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * tableView, NSIndexPath * indexPath){
    return 54;
}


static UITableViewCell * _logos_method$_ungrouped$DWConfigVC$tableView$cellForRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL DWConfigVC* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * tableView, NSIndexPath * indexPath) {

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



static void _logos_method$_ungrouped$DWConfigVC$tableView$didSelectRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL DWConfigVC* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * tableView, NSIndexPath * indexPath){
    NSArray *tempLocations = [(UIViewController *)self valueForKey:@"locations"];
    NSDictionary *dic      = [tempLocations objectAtIndex:indexPath.row];

    [[NSUserDefaults standardUserDefaults] setValue:dic[@"isoCode"] forKey:@"dw_isoCode"];
    [[NSUserDefaults standardUserDefaults] setValue:dic[@"mccCode"] forKey:@"dw_mccCode"];
    [[NSUserDefaults standardUserDefaults] setValue:dic[@"mncCode"] forKey:@"dw_mncCode"];
    [[NSUserDefaults standardUserDefaults] synchronize];

    [tableView reloadData];
}












static NSString * _logos_method$_ungrouped$CTCarrier$isoCountryCode(_LOGOS_SELF_TYPE_NORMAL CTCarrier* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    NSString *isoCode = [[NSUserDefaults standardUserDefaults] objectForKey:@"dw_isoCode"];

    
    if (isoCode.length == 0) { 
        isoCode = @"Japan";
        [[NSUserDefaults standardUserDefaults] setValue:isoCode forKey:@"dw_isoCode"];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
    return isoCode;
}



static NSString * _logos_method$_ungrouped$CTCarrier$mobileCountryCode(_LOGOS_SELF_TYPE_NORMAL CTCarrier* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    NSString *mccCode = [[NSUserDefaults standardUserDefaults] objectForKey:@"dw_mccCode"];
    NSLog(@"-[<CTCarrier: %p> mobileCountryCode]: %@, %@", self, ((NSString *)@"imobileCountryCode数据 ~~~~~~~~"), ((NSString *)mccCode));

    
    if (mccCode.length == 0) { 
        mccCode = @"440";
        [[NSUserDefaults standardUserDefaults] setValue:mccCode forKey:@"dw_mccCode"];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
    return mccCode;
}



static NSString * _logos_method$_ungrouped$CTCarrier$mobileNetworkCode(_LOGOS_SELF_TYPE_NORMAL CTCarrier* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    NSString *mncCode = [[NSUserDefaults standardUserDefaults] objectForKey:@"dw_mncCode"];
    NSLog(@"-[<CTCarrier: %p> mobileNetworkCode]: %@, %@", self, ((NSString *)@"mobileNetworkCode ~~~~~~~~"), ((NSString *)mncCode));

    
    if (mncCode.length == 0) { 
        mncCode = @"01";
        [[NSUserDefaults standardUserDefaults] setValue:mncCode forKey:@"dw_mncCode"];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
    return mncCode;
}













@class AWESettingBaseViewController;



static void _logos_method$_ungrouped$AWESettingBaseViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL AWESettingBaseViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
	_logos_orig$_ungrouped$AWESettingBaseViewController$viewDidLoad(self, _cmd);
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



static void _logos_method$_ungrouped$AWESettingBaseViewController$clickHead(_LOGOS_SELF_TYPE_NORMAL AWESettingBaseViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
	DWConfigVC *objc = [[_logos_static_class_lookup$DWConfigVC() alloc] init];
	[((UIViewController *)self).navigationController pushViewController:(UIViewController *)objc animated:true]; 
}
































static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$TTInstallSandBoxHelper = objc_getClass("TTInstallSandBoxHelper"); Class _logos_metaclass$_ungrouped$TTInstallSandBoxHelper = object_getClass(_logos_class$_ungrouped$TTInstallSandBoxHelper); { MSHookMessageEx(_logos_metaclass$_ungrouped$TTInstallSandBoxHelper, @selector(bundleIdentifier), (IMP)&_logos_meta_method$_ungrouped$TTInstallSandBoxHelper$bundleIdentifier, (IMP*)&_logos_meta_orig$_ungrouped$TTInstallSandBoxHelper$bundleIdentifier);}{ MSHookMessageEx(_logos_metaclass$_ungrouped$TTInstallSandBoxHelper, @selector(isAppStoreChannel), (IMP)&_logos_meta_method$_ungrouped$TTInstallSandBoxHelper$isAppStoreChannel, (IMP*)&_logos_meta_orig$_ungrouped$TTInstallSandBoxHelper$isAppStoreChannel);}Class _logos_class$_ungrouped$UIViewController = objc_getClass("UIViewController"); { Class _logos_class$_ungrouped$DWConfigVC = objc_allocateClassPair(_logos_class$_ungrouped$UIViewController, "DWConfigVC", 0); objc_registerClassPair(_logos_class$_ungrouped$DWConfigVC); { MSHookMessageEx(_logos_class$_ungrouped$DWConfigVC, @selector(viewDidLoad), (IMP)&_logos_method$_ungrouped$DWConfigVC$viewDidLoad, (IMP*)&_logos_orig$_ungrouped$DWConfigVC$viewDidLoad);}{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$DWConfigVC, @selector(clickBackButton), (IMP)&_logos_method$_ungrouped$DWConfigVC$clickBackButton, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(NSInteger), strlen(@encode(NSInteger))); i += strlen(@encode(NSInteger)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(UITableView *), strlen(@encode(UITableView *))); i += strlen(@encode(UITableView *)); memcpy(_typeEncoding + i, @encode(NSInteger), strlen(@encode(NSInteger))); i += strlen(@encode(NSInteger)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$DWConfigVC, @selector(tableView:numberOfRowsInSection:), (IMP)&_logos_method$_ungrouped$DWConfigVC$tableView$numberOfRowsInSection$, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(CGFloat), strlen(@encode(CGFloat))); i += strlen(@encode(CGFloat)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(UITableView *), strlen(@encode(UITableView *))); i += strlen(@encode(UITableView *)); memcpy(_typeEncoding + i, @encode(NSIndexPath *), strlen(@encode(NSIndexPath *))); i += strlen(@encode(NSIndexPath *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$DWConfigVC, @selector(tableView:heightForRowAtIndexPath:), (IMP)&_logos_method$_ungrouped$DWConfigVC$tableView$heightForRowAtIndexPath$, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(UITableViewCell *), strlen(@encode(UITableViewCell *))); i += strlen(@encode(UITableViewCell *)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(UITableView *), strlen(@encode(UITableView *))); i += strlen(@encode(UITableView *)); memcpy(_typeEncoding + i, @encode(NSIndexPath *), strlen(@encode(NSIndexPath *))); i += strlen(@encode(NSIndexPath *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$DWConfigVC, @selector(tableView:cellForRowAtIndexPath:), (IMP)&_logos_method$_ungrouped$DWConfigVC$tableView$cellForRowAtIndexPath$, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(UITableView *), strlen(@encode(UITableView *))); i += strlen(@encode(UITableView *)); memcpy(_typeEncoding + i, @encode(NSIndexPath *), strlen(@encode(NSIndexPath *))); i += strlen(@encode(NSIndexPath *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$DWConfigVC, @selector(tableView:didSelectRowAtIndexPath:), (IMP)&_logos_method$_ungrouped$DWConfigVC$tableView$didSelectRowAtIndexPath$, _typeEncoding); }{ char _typeEncoding[1024]; sprintf(_typeEncoding, "%s@:", @encode(NSArray *)); class_addMethod(_logos_class$_ungrouped$DWConfigVC, @selector(locations), (IMP)&_logos_method$_ungrouped$DWConfigVC$locations, _typeEncoding); sprintf(_typeEncoding, "v@:%s", @encode(NSArray *)); class_addMethod(_logos_class$_ungrouped$DWConfigVC, @selector(setLocations:), (IMP)&_logos_method$_ungrouped$DWConfigVC$setLocations, _typeEncoding); }  class_addProtocol(_logos_class$_ungrouped$DWConfigVC, objc_getProtocol("UITableViewDataSource")); class_addProtocol(_logos_class$_ungrouped$DWConfigVC, objc_getProtocol("UITableViewDelegate")); }Class _logos_class$_ungrouped$CTCarrier = objc_getClass("CTCarrier"); { MSHookMessageEx(_logos_class$_ungrouped$CTCarrier, @selector(isoCountryCode), (IMP)&_logos_method$_ungrouped$CTCarrier$isoCountryCode, (IMP*)&_logos_orig$_ungrouped$CTCarrier$isoCountryCode);}{ MSHookMessageEx(_logos_class$_ungrouped$CTCarrier, @selector(mobileCountryCode), (IMP)&_logos_method$_ungrouped$CTCarrier$mobileCountryCode, (IMP*)&_logos_orig$_ungrouped$CTCarrier$mobileCountryCode);}{ MSHookMessageEx(_logos_class$_ungrouped$CTCarrier, @selector(mobileNetworkCode), (IMP)&_logos_method$_ungrouped$CTCarrier$mobileNetworkCode, (IMP*)&_logos_orig$_ungrouped$CTCarrier$mobileNetworkCode);}Class _logos_class$_ungrouped$AWESettingBaseViewController = objc_getClass("AWESettingBaseViewController"); { MSHookMessageEx(_logos_class$_ungrouped$AWESettingBaseViewController, @selector(viewDidLoad), (IMP)&_logos_method$_ungrouped$AWESettingBaseViewController$viewDidLoad, (IMP*)&_logos_orig$_ungrouped$AWESettingBaseViewController$viewDidLoad);}{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$AWESettingBaseViewController, @selector(clickHead), (IMP)&_logos_method$_ungrouped$AWESettingBaseViewController$clickHead, _typeEncoding); }} }
#line 255 "Tweak.x"
