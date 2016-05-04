LOCAL_PATH := $(call my-dir)

pp_qq_common_common_c_includes := $(LOCAL_PATH)/lib/common/src
pp_qq_common_cipher_c_includes := $(LOCAL_PATH)/lib/common/src
pp_qq_common_digest_c_includes := $(LOCAL_PATH)/lib/common/src
pp_qq_common_exception_c_includes := $(LOCAL_PATH)/lib/common/src
pp_qq_common_execute_time_get_c_includes := $(LOCAL_PATH)/lib/common/src
pp_qq_common_formatter_c_includes := $(LOCAL_PATH)/lib/common/src
pp_qq_common_glibc_cxx_wrap_c_includes := $(LOCAL_PATH)/lib/common/src
pp_qq_common_hex_coding_c_includes := $(LOCAL_PATH)/lib/common/src
pp_qq_common_log_c_includes := $(LOCAL_PATH)/lib/common/src
pp_qq_common_rrid_c_includes := $(LOCAL_PATH)/lib/common/src
pp_qq_common_string_c_includes := $(LOCAL_PATH)/lib/common/src

include $(shell find $(LOCAL_PATH)/ -mindepth 2  -name 'Android.mk' -type f)

include $(CLEAR_VARS)

LOCAL_C_INCLUDES :=  $(LOCAL_PATH)/lib/common/src

LOCAL_MODULE := common_test
LOCAL_SRC_FILES := common_test.cc

LOCAL_STATIC_LIBRARIES := pp_qq_common_common

LOCAL_LDLIBS := -llog

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_C_INCLUDES :=  $(LOCAL_PATH)/lib/common/src

LOCAL_MODULE := formatter_test
LOCAL_SRC_FILES := formatter_test.cc
LOCAL_STATIC_LIBRARIES := pp_qq_common_string  pp_qq_common_formatter
LOCAL_LDLIBS := -llog

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_C_INCLUDES :=  $(LOCAL_PATH)/lib/common/src

LOCAL_MODULE := hex_coding_test
LOCAL_SRC_FILES := hex_coding_test.cc
LOCAL_STATIC_LIBRARIES := pp_qq_common_hex_coding pp_qq_common_string
LOCAL_LDLIBS := -llog

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE := rrid_test
LOCAL_SRC_FILES := rrid_test.cc
LOCAL_LDLIBS := -llog
LOCAL_STATIC_LIBRARIES := pp_qq_common_rrid
LOCAL_C_INCLUDES :=  $(LOCAL_PATH)/lib/common/src

include $(BUILD_SHARED_LIBRARY)



