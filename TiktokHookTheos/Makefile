export THEOS_DEVICE_IP   = 127.0.0.1     # 注入手机ip地址 （公司）
export THEOS_DEVICE_PORT = 10010			# 注入手机端口号


TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = yes


include /Users/dingwei/theos/makefiles/common.mk

TWEAK_NAME = TikTok_hook

TikTok_hook_FILES = Tweak.x
TikTok_hook_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk


after-install::
	install.exec "killall -9 SpringBoard"