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
      NSString *p = [call.arguments objectForKey:@"image"];
      BOOL rst =[self checkFace:  p];
      result(@(rst));
  } else {
    result(FlutterMethodNotImplemented);
  }
}

- (BOOL)checkFace:(NSString*)p{
    
    NSURL * urlStr = [NSURL fileURLWithPath:p];

    CIImage *myImage = [CIImage imageWithContentsOfURL:urlStr];

    CIContext *context = [CIContext context];                    // 1
    NSDictionary *opts = @{ CIDetectorAccuracy : CIDetectorAccuracyHigh };      // 2
    CIDetector *detector = [CIDetector detectorOfType:CIDetectorTypeFace
                                              context:context
                                              options:opts];                    // 3

    opts = @{ CIDetectorImageOrientation :
              [[myImage properties] valueForKey:kCGImagePropertyOrientation] }; // 4
    NSArray *features = [detector featuresInImage:myImage options:opts];        // 5
    if (features.count >0) {
        return YES;
    } else {
        return NO;
    }
}

@end
