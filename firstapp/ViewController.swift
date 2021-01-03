//
//  ViewController.swift
//  firstapp
//
//  Created by Еременко Игорь on 22.12.2020.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet private weak var priceTxt: UITextField!
    @IBOutlet private weak var salesTxt: UITextField!
    @IBOutlet private weak var totalPriceLbl: UILabel!
    @IBOutlet private weak var countButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

    func setup() {
        totalPriceLbl.text = ""
        totalPriceLbl.textColor = .green
        countButton.layer.cornerRadius = countButton.bounds.height/2
        
    }

    @IBAction func countTotalPrice(_ sender: Any) {
        let price = Double(priceTxt.text!)
        let sales = Double(salesTxt.text!)
        
        if let price = price,
           let sales = sales {
            let totalSales = price * sales
            let totalPrice = price + totalSales
            totalPriceLbl.text = "$\(totalPrice)"
        }
    }
    
    @IBAction func resetTapped(_ sender: UIButton) {
        priceTxt.text = ""
        salesTxt.text = ""
        totalPriceLbl.text = ""
    }
}

