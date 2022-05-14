//
//  TaxesCalculated.swift
//  comprasUSA
//
//  Created by Michelli Cristina de Paulo Lima on 14/05/22.
//

import Foundation


class TaxesCalculator {
    
    static let shared = TaxesCalculator()
    var dolar: Double = 5.06
    var iof: Double = 6.38
    var stateTax: Double = 7.0
    var shoppingValue: Double = 0
    
    var shoppingValueInReal: Double {
        return shoppingValue * dolar
    }
    
    var stateTaxValue: Double {
        return shoppingValue * stateTax/100
    }
    
    var iofValue: Double {
        return (shoppingValue + stateTax) * iof/100
    }
    
    func calculated(usingCreditCard: Bool) -> Double {
        var finalValue = shoppingValue + stateTaxValue
        if usingCreditCard {
            finalValue += iofValue
        }
        return finalValue
    }
    
    private init() {
        
    }
    
}
