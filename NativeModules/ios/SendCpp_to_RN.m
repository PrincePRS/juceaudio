//
//  SendCpp_to_RN.m
//  NativeModules
//
//  Created by Fstar0213 on 2023/11/5.
//

#import <Foundation/Foundation.h>
#import "React/RCTBridgeModule.h"
#import "UIKit/UIKit.h"

@interface RCT_EXTERN_MODULE(SendCpp_to_RN, NSObject)

RCT_EXTERN_METHOD(fromCpp:(RCTResponseSenderBlock)successCallback)

@end
