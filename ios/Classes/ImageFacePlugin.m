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

//-(Boolean)checkFace:(NSString*)p{
//    
////    CIImage *myImage = [CIImage imageWithContentsOfURL:(nonnull NSURL *)]
////
////    CIContext *context = [CIContext context];                    // 1
////    NSDictionary *opts = @{ CIDetectorAccuracy : CIDetectorAccuracyHigh };      // 2
////    CIDetector *detector = [CIDetector detectorOfType:CIDetectorTypeFace
////                                              context:context
////                                              options:opts];                    // 3
////
////    opts = @{ CIDetectorImageOrientation :
////              [[myImage properties] valueForKey:kCGImagePropertyOrientation] }; // 4
////    NSArray *features = [detector featuresInImage:myImage options:opts];        // 5
//    
//}

@end
