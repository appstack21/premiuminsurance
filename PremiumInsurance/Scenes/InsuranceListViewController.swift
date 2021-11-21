//
//  InsuranceListViewController.swift
//  PremiumInsurance
//
//  Created by pankaj.k.jha on 20/11/21.
//

import UIKit

final public class InsuranceListViewController: UIViewController {

    public override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    public func getPremium () -> Double {
        IPInsuranceManager.shared.getInsurancePremium(onAmount: 23)
    }
}
