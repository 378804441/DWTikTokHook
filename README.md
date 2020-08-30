
简书地址: 

早就略有耳闻TikTok会有锁区，结合一些 知乎上的文章 如 : https://zhuanlan.zhihu.com/p/181691137，

某宝上tiktok电话卡
还有在某宝上贩卖的TikTok国外电话卡就能基本确定，TikTok就是通过获取 MCC(移动国家码)和 MNC(移动网络码) 进行锁区的了。
整体思路定了，就开始着手开始搞起。

先获取一下本机的 mcc,mnc 码看一下

获取的结果
然后度娘一下全球运营商 mcc，mnc大全。 (我用的是 http://ultra.chinasnow.net/opcode  这个网站查询的)

先获取的日本的一个运营商码
然后照葫芦画瓢, hook掉 获取运营商各个信息的get方法。然后用hook神器 theos编写代码并进行注入。

hook代码查看源码即可

最后发现果然这样就可以播放了😂

突破运营商锁区后可观看tiktok
然后我们就可以预埋一些自己想看的地区运营商的信息，扩展出一个切换地区列表功能了。
具体的区域可以自己任意预埋上去

我们还可以将tiktok进行重签名后分发给别人未越狱的设备进行安装。
但这里有个坑，那就是当你重签名 bundleId发生改变后，tiktok将无法登陆。
我怀疑他们是做了bundleId合法性校验。
然后我就对 NSBundle 的 bundleIdentifier 方法进行了hook。但每次返回回来的是个版本号，并不是bundleId。
估计他们有做了一些偏移处理😂。 接着找。最后定位到  TTInstallSandBoxHelper 类的  + (id)bundleIdentifier; 方法。
然后对该方法同样进行 hook处理，强制返回 tiktok 原来的bundleId。这样重签名后修改了bundleId后的 app也可以正常 使用登陆，查看留言，进行留言，关注，发帖，下载等功能了。

目前这个版本插件切换区域后需要重启一下 app，没有做实时生效功能，等有时间的把这个坑填一下。



















