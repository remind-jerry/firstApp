//
//  ViewController.swift
//  firstapp
//
//  Created by Еременко Игорь on 22.12.2020.
//

import UIKit

final class ViewController: UIViewController {

    // MARK: IBOutlets

    @IBOutlet private weak var priceTxt: UITextField!
    @IBOutlet private weak var salesTxt: UITextField!
    @IBOutlet private weak var totalPriceLbl: UILabel!
    @IBOutlet private weak var countButton: UIButton!

    // MARK: Private properties

    private let totalPriceDefaultText = "Enter price and sales"

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    // MARK: Private methods

    private func setupView() {
        totalPriceLbl.text = totalPriceDefaultText
        totalPriceLbl.textColor = .green
    }

    // MARK: IBActions

    @IBAction func countTotalPrice(_ sender: Any) {
        let price = Double(priceTxt.text!)
        let sales = Double(salesTxt.text!)
        
        if let price = price,
           let sales = sales {
            let totalSales = price * sales
            let totalPrice = price + totalSales
            totalPriceLbl.text = "Total price: $\(totalPrice)"
        }
    }
    
    @IBAction func resetTapped(_ sender: UIButton) {
        priceTxt.text = ""
        salesTxt.text = ""
        totalPriceLbl.text = totalPriceDefaultText
    }
}

