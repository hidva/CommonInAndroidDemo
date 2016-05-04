
#include <android/log.h>
#include "org_pp_qq_common_in_android_demo_NativeTest.h"

#include "formatter/stdio_formatter.h"
#include "string/extended_std_string.h"

void Java_org_pp_1qq_common_1in_1android_1demo_NativeTest_FormatterTest(JNIEnv *, jclass)
{
    ExtendedStdString str("Hello");
    AppendStdioFormat(str,"d: %d;f: %f;s: %s",3,3.33,"world");

    __android_log_write(ANDROID_LOG_ERROR,"FormatterTest",str.cdata());
    return ;
}

