LOCAL_PATH := $(call my-dir)

include $(LOCAL_PATH)/lib/nettle/Android.mk
include $(LOCAL_PATH)/lib/common/src/rrid/Android.mk
include $(LOCAL_PATH)/lib/common/src/hex_coding/Android.mk
include $(LOCAL_PATH)/lib/common/src/common/Android.mk
include $(LOCAL_PATH)/lib/common/src/execute_time_get/Android.mk
include $(LOCAL_PATH)/lib/common/src/glibc_cxx_wrap/Android.mk
include $(LOCAL_PATH)/lib/common/src/cipher/Android.mk
include $(LOCAL_PATH)/lib/common/src/log/Android.mk
include $(LOCAL_PATH)/lib/common/src/string/Android.mk
include $(LOCAL_PATH)/lib/common/src/exception/Android.mk
include $(LOCAL_PATH)/lib/common/src/digest/Android.mk
include $(LOCAL_PATH)/lib/common/src/formatter/Android.mk


LOCAL_PATH_BAK := $(LOCAL_PATH)
$(call import-module,third_party/googletest)
LOCAL_PATH := $(LOCAL_PATH_BAK)

include $(CLEAR_VARS)

LOCAL_MODULE := common_test


LOCAL_WHOLE_STATIC_LIBRARIES := nettle \
	pp_qq_common_cipher_test	\
	pp_qq_common_hex_coding_test \
	pp_qq_common_execute_time_get_test	\
	pp_qq_common_digest_test 	\
	pp_qq_common_string_test 	\
	pp_qq_common_rrid_test	\
	pp_qq_common_common_test	\
	pp_qq_common_glibc_cxx_wrap_test	\
	pp_qq_common_log_test	\
	pp_qq_common_exception_test	\
	pp_qq_common_formatter_test	\
	googletest_main

LOCAL_LDLIBS := -llog

include $(BUILD_EXECUTABLE)




