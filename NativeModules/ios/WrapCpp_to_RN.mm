//
//  WrapCpp_to_RN.m
//  NativeModules
//
//  Created by Fstar0213 on 2023/11/5.
//

#import <Foundation/Foundation.h>
#import "WrapCpp_to_RN.h"
#import "Cpp_to_RN.hpp"

@implementation WrapCpp_to_RN

- (NSString *)wrapSayHello {
  Cpp_to_RN fromCPP;
  std::string helloWorldMessage = fromCPP.sayHello();
  return [NSString stringWithCString:helloWorldMessage.c_str() encoding:NSUTF8StringEncoding];
}
@end
