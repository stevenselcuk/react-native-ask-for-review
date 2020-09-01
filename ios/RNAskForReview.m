#import "React/RCTBridgeModule.h"
#import "React/RCTEventEmitter.h"

@interface RCT_EXTERN_MODULE(RNAskForReview, NSObject)
RCT_EXTERN_METHOD(incrementAppOpenedCount:(RCTPromiseResolveBlock)resolve rejecter: (RCTPromiseRejectBlock)reject)
RCT_EXTERN_METHOD(checkAndAskForReview:(RCTPromiseResolveBlock)resolve rejecter: (RCTPromiseRejectBlock)reject)
@end
