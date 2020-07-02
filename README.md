# image_face

this plugin only one class ImageFace this class only one static function hasFace accept one parameter image  , get native detect result by _channel.invokeMethod , type is `bool`. if `true` the image has face, if `false` the image has no face. this plugin do one thing only.

## Getting Started

This project is a starting point for a Flutter
[plug-in package](https://flutter.dev/developing-packages/),
a specialized package that includes platform-specific implementation code for
Android and/or iOS.

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

[plugins](https://flutter.dev/docs/development/packages-and-plugins/developing-packages)

[platfoems](https://flutter.dev/docs/development/platform-integration/platform-channels?tab=ios-channel-swift-tab)

[gitflow](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow)

[commit](https://gist.github.com/stephenparish/9941e89d80e2bc58a153)

## install

add plugin in pubspec.yaml

```yaml
image_face: ^1.0.0
```

and run in shell

```shell
flutter pub get
```

## usage

```dart
import 'package:image_face/image_face.dart';

File pickedFile = await ImagePicker.pickImage(
      source: ImageSource.gallery,
    );
bool _has = await ImageFace.hasFace(pickedFile);
print('this image ${_has?'has':'no'} face');
```

[![Paypal](https://www.paypalobjects.com/webstatic/mktg/Logo/pp-logo-100px.png)](https://paypal.me/paydomliang)

<a href="https://www.buymeacoffee.com/domliang" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/purple_img.png" alt="Buy Me A Coffee" style="height: auto !important;width: auto !important;" ></a>

## License

```text
MIT License

Copyright (c) 2016 Dom Liang

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
