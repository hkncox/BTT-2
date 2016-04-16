//
//  IAPHelper.swift
//  BTT-2
//
//  Created by Nicole Talley on 4/16/16.
//  Copyright © 2016 Nicole Talley. All rights reserved.
//

import StoreKit

public typealias ProductIdentifier = String
public typealias ProductsRequestCompletionHandler = (success: Bool, products: [SKProduct]?) -> ()

public class IAPHelper : NSObject  {
    private let productIdentifiers: Set<ProductIdentifiers>
    
    
    static let IAPHelperPurchaseNotification = "IAPHelperPurchaseNotification"
    
    public init(productIds: Set<ProductIdentifier>) {
        self.productIdentifiers = productIds
        super.init()
    }
}

// MARK: - StoreKit API

extension IAPHelper {
    
    public func requestProducts(completionHandler: ProductsRequestCompletionHandler) {
        completionHandler(success: false, products: [])
    }
    
    public func buyProduct(product: SKProduct) {
    }
    
    public func isProductPurchased(productIdentifier: ProductIdentifier) -> Bool {
        return false
    }
    
    public class func canMakePayments() -> Bool {
        return true
    }
    
    public func restorePurchases() {
    }
}

