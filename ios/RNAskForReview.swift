//
//  RNAskForReview.swift
//  RNAskForReview
//
//  Created by Steven J. Selcuk on 1.09.2020.
//  Copyright © 2020 Facebook. All rights reserved.
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
        var appOpenCount = UserDefaults.standard.integer(forKey: "APP_OPENED_COUNT")
        appOpenCount += 1
        UserDefaults.standard.set(appOpenCount, forKey: "APP_OPENED_COUNT")
        resolve(appOpenCount)
    }
    @objc  func checkAndAskForReview(_ resolve: @escaping RCTPromiseResolveBlock,
                                     rejecter reject: RCTPromiseRejectBlock) -> Void {
        let appOpenCount = UserDefaults.standard.integer(forKey: "APP_OPENED_COUNT")
        
        switch appOpenCount {
            case 10,50:
                RNAskForReview().requestReview()
                UserDefaults.standard.set(appOpenCount, forKey: "REVIEW_REQUESTED")
                resolve("Asked")
            case _ where appOpenCount%100 == 0 :
                RNAskForReview().requestReview()
                resolve("Asked")
            default:
                resolve("Not Asked")
                break;
        }
        
    }
    func requestReview() {
        SKStoreReviewController.requestReview()
    }
}
