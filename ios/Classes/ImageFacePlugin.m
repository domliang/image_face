#import "ImageFacePlugin.h"

@implementation ImageFacePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"image_face"
            binaryMessenger:[registrar messenger]];
  ImageFacePlugin* instance = [[ImageFacePlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  if ([@"hasFace" isEqualToString:call.method]) {
    result(@(NO));
  } else {
    result(FlutterMethodNotImplemented);
  }
}

@end
