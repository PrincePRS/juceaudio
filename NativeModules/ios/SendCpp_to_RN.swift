//
//  SendCpp_to_RN.swift
//  NativeModules
//
//  Created by Fstar0213 on 2023/11/5.
//

import Foundation

@objc(SendCpp_to_RN)
class SendCpp_to_RN : NSObject {
  @objc static func requiresMainQueueSetup() -> Bool {
    return false
  }
  
  @objc func fromCpp(_ successCallback: RCTResponseSenderBlock) ->
  Void {
    successCallback([NSNull(), WrapCpp_to_RN().wrapSayHello() as Any])
  }
}
