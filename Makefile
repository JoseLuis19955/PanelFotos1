TARGET := iphone:clang:latest:15.0
ARCHS = arm64
THEOS_PACKAGE_SCHEME = rootless
INSTALL_TARGET_PROCESSES = PanelFotos

include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = PanelFotos
PanelFotos_FILES = main.m
PanelFotos_FRAMEWORKS = UIKit PhotosUI Photos AVFoundation CoreImage CoreMedia CoreVideo QuartzCore
PanelFotos_CFLAGS = -fobjc-arc
PanelFotos_CODESIGN_FLAGS = -SEntitlements.plist

include $(THEOS_MAKE_PATH)/application.mk
