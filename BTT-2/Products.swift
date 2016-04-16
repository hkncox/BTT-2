//
//  Products.swift
//  BTT-2
//
//  Created by Nicole Talley on 4/16/16.
//  Copyright © 2016 Nicole Talley. All rights reserved.
//

import Foundation

public struct IAPProducts {
    
    private static let Prefix = "Bust-The-Thrust.BTT-2."
    public static let TherapistAccess = Prefix + "btt_therapistAccess"
    private static let productIdentifiers: Set<ProductIdentifier> = [IAPProducts.TherapistAccess]
    public static let store = IAPHelper(productIds: IAPProducts.productIdentifiers)
}

func resourceNameForProductIdentifier(productIdentifier: String) -> String? {
    return productIdentifier.componentsSeparatedByString(".").last
}
