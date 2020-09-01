//
//  RNAskForReview.swift
//  tabbycat
//
//  Created by Steven J. Selcuk on 31.08.2020.
//  Copyright © 2020 Tabby Cat, LLC. All rights reserved.
//

import Foundation
import StoreKit


@available(iOS 12.0, *)
@objc(RNAskForReview)
open class RNAskForReview: NSObject {
  
  override init() {
    super.init()
  }
  
  @objc  func incrementAppOpenedCount(_ resolve: @escaping RCTPromiseResolveBlock,
                                      rejecter reject: RCTPromiseRejectBlock) -> Void {
    var appOpenCount = UserDefaults.standard.integer(forKey: "APP_LAUNCH_COUNT")
    appOpenCount += 1
    UserDefaults.standard.set(appOpenCount, forKey: "APP_LAUNCH_COUNT")
    resolve(appOpenCount)
  }
  @objc  func checkAndAskForReview(_ resolve: @escaping RCTPromiseResolveBlock,
                                   rejecter reject: RCTPromiseRejectBlock) -> Void {
    let appOpenCount = UserDefaults.standard.integer(forKey: "APP_LAUNCH_COUNT")
    
    switch appOpenCount {
      case 10,50:
        RNAskForReview().requestReview()
        resolve("Requested")
      case _ where appOpenCount%100 == 0 :
        RNAskForReview().requestReview()
        resolve("Requested")
      default:
        resolve(nil)
        break;
    }
    
  }
  func requestReview() {
    SKStoreReviewController.requestReview()
  }
}
