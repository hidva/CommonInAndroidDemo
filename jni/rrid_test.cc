#include <android/log.h>

#include "org_pp_qq_common_in_android_demo_NativeTest.h"

#include "rrid/on_exception.h"
#include "rrid/scope_exit.h"

void ThrowException ()
{
    ON_EXCEPTIN {
        __android_log_print(ANDROID_LOG_ERROR,"RRIDTest","OnException Called");
    };

    throw 33;
    return ;
}

void  Java_org_pp_1qq_common_1in_1android_1demo_NativeTest_RRIDTest(JNIEnv *, jclass)
{
    ON_SCOPE_EXIT (test) {
        __android_log_print(ANDROID_LOG_ERROR,"RRIDTest","OnScopeExit test");
    };

    ON_SCOPE_EXIT (test1) {
        __android_log_print(ANDROID_LOG_ERROR,"RRIDTest","OnScopeExit test1");
    };

    test1.Dismiss();

    try {
        ThrowException();
    } catch (...) {

    }

    return ;
}

