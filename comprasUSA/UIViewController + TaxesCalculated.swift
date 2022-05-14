//
//  UIViewController + TaxesCalculated.swift
//  comprasUSA
//
//  Created by Michelli Cristina de Paulo Lima on 14/05/22.
//

import Foundation
import UIKit


extension UIViewController {
    var tc: TaxesCalculator {
        return TaxesCalculator.shared
    }
}
