
project_jni_path := $(call my-dir)

APP_OPTIM := debug

APP_PLATFORM := android-22

APP_ABI :=  armeabi-v7a

APP_STL := gnustl_shared

APP_CFLAGS := -I$(project_jni_path)/lib/common/src
APP_CPPFLAGS := -std=gnu++11

NDK_TOOLCHAIN_VERSION = 4.9
