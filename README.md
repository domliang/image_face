# image_face

A new flutter plugin project.

## Getting Started

This project is a starting point for a Flutter
[plug-in package](https://flutter.dev/developing-packages/),
a specialized package that includes platform-specific implementation code for
Android and/or iOS.

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

[插件开发文档](https://flutter.dev/docs/development/packages-and-plugins/developing-packages)

[平台代码](https://flutter.dev/docs/development/platform-integration/platform-channels?tab=ios-channel-swift-tab)

[gitflow](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow)

[commit message 规范](https://gist.github.com/stephenparish/9941e89d80e2bc58a153)

## 需求

该插件有一个类 ImageFace 该类有一个静态方法 hasFace 参数接收 File类型图片 , 通过_channel.invokeMethod 获取native返回的结果, 结果为`bool`. `true`说明图里有人脸, `false`说明图里没有人脸. 该插件开发要求尽量精简, 只做检查人脸一件事.
