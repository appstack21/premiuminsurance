//
//  IPInsuranceManager.swift
//  PremiumInsurance
//
//  Created by pankaj.k.jha on 20/11/21.
//

import Foundation

public class IPInsuranceManager {
    
    static let shared = IPInsuranceManager()
    private init() {}
    ///Method to get insurance amount
    public func getInsurancePremium(onAmount amount: Double) -> Double {
        return amount * 0.10;
    }
}
