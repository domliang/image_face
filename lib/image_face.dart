import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart';

class ImageFace {
  static const MethodChannel _channel = const MethodChannel('image_face');

  // static Future<String> get platformVersion async {
  //   final String version = await _channel.invokeMethod('getPlatformVersion');
  //   return version;
  // }

  static Future<bool> hasFace(File image) async {
    if (image == null) {
      return false;
    }
    print('plug start');
    final Map<String, String> arg = {'image': image.path};
    final bool _has = await _channel.invokeMethod('hasFace', arg);
    print('plug end');
    return _has;
  }
}
