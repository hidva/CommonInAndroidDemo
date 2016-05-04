
#include <android/log.h>

#include "hex_coding/hex_coding.h"
#include "string/extended_std_string.h"

#include "org_pp_qq_common_in_android_demo_NativeTest.h"

void  Java_org_pp_1qq_common_1in_1android_1demo_NativeTest_HexCodingTest(JNIEnv *, jclass)
{
    unsigned char buf[] {0x01,0x03};
    __android_log_print(ANDROID_LOG_ERROR,"HexCodingTest","hex: %s",HexEncode<ExtendedStdString>(buf,sizeof(buf)).cdata());
    return ;
}
