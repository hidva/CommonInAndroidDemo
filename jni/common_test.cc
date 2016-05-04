
#include <android/log.h>

#include "org_pp_qq_common_in_android_demo_NativeTest.h"

#include "common/inline_utils.h"


void Java_org_pp_1qq_common_1in_1android_1demo_NativeTest_CommonTest(JNIEnv *, jclass)
{
    __android_log_print(ANDROID_LOG_ERROR,"CommonTest","IsOdd(3): %d",IsOdd(3));
    __android_log_print(ANDROID_LOG_ERROR,"CommonTest","IsOdd(3): %d",IsOdd(4));
    __android_log_print(ANDROID_LOG_ERROR,"CommonTest","IsOdd(3): %d",IsEven(3));
    __android_log_print(ANDROID_LOG_ERROR,"CommonTest","IsOdd(3): %d",IsEven(4));
    return ;
}
