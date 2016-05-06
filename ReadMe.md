
## 介绍

*   Demo;用来演示如何在 Android 项目中使用 common

## 如何使用

*   就让我用代码说明一切吧

    ```cpp
    $ git clone # 克隆代码
    $ cd CommonInAndroidDemo # 切换到项目根目录
    $ $ANDROID_NDK_ROOT/ndk-build # 运行 ndk-build 编译
    $ tree libs
    libs/
    ├── arm64-v8a
    │   └── common_test # 64 位可执行
    └── armeabi-v7a
        └── common_test # 32 位可执行

    # 推送到手机上
    $ adb push libs/arm64-v8a/common_test /data/local/tmp/common_test64
    $ adb push libs/armeabi-v7a/common_test /data/local/tmp

    $ adb shell # 接下来就是手机的终端了
    $ su # 切换到 root 权限,如果未 root,那么可以试着执行下面的命令,应该不需要 root.
    $ cd /data/local/tmp
    $ ./common_test # 这里开始跑测试用例,大概得耗时 2 个小时.
    $ ./common_test64 # 测试 64 位下的测试用例
    ```
