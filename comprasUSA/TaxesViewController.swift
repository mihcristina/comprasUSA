//
//  TaxesViewController.swift
//  comprasUSA
//
//  Created by Michelli Cristina de Paulo Lima on 14/05/22.
//

import UIKit

class TaxesViewController: UIViewController {
    
    
    @IBOutlet weak var lbDolar: UILabel!
    @IBOutlet weak var lbStateTaxes: UILabel!
    @IBOutlet weak var lbIOFDescription: UILabel!
    @IBOutlet weak var lbIOF: UILabel!
    @IBOutlet weak var swCreditCard: UISwitch!
    @IBOutlet weak var lbStateTaxesDescription: UILabel!
    @IBOutlet weak var lbReal: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func changeIOF(_ sender: Any) {
        calculateTaxes()
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        calculateTaxes()
    }

    func calculateTaxes() {
        lbStateTaxesDescription.text = "Imposto do Estado (\(tc.getFormattedValue(of: tc.stateTax, withCurrency: ""))%)"
        lbIOFDescription.text = "IOF (\(tc.getFormattedValue(of: tc.iof, withCurrency: ""))%)"
        lbDolar.text = tc.getFormattedValue(of: tc.iof, withCurrency: "US$ ")
        lbStateTaxes.text = tc.getFormattedValue(of: tc.stateTaxValue, withCurrency: "US$ ")
        lbIOF.text = tc.getFormattedValue(of: tc.iofValue, withCurrency: "U$ ")
        let real = tc.calculated(usingCreditCard: swCreditCard.isOn)
        lbReal.text = tc.getFormattedValue(of: real, withCurrency: "R$ ")
    }
}
