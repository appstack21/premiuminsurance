//
//  IPInsuranceManager.swift
//  PremiumInsurance
//
//  Created by pankaj.k.jha on 20/11/21.
//

import Foundation

public class IPInsuranceManager {
    
    public static let shared = IPInsuranceManager()
    private init() {}
    ///Method to get insurance amount
    public func getInsurancePremium(onAmount amount: Double) -> Double {
        return amount * 0.10;
    }
    
    //Get other premium
    public func getInsurancePremiumOther(onAmount amount: Double) -> Double {
        return amount * 0.20;
    }
}
