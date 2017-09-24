//
//  MainVC.swift
//  Shopper Calculator
//
//  Created by Gray Zhen on 9/23/17.
//  Copyright © 2017 GrayStudio. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxtField: CustomTextField!
    @IBOutlet weak var priceTxtField: CustomTextField!
    @IBOutlet weak var hoursLbl: UILabel!
    @IBOutlet weak var hoursTxtLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //To dismiss the keyboard when touch anywhere on the View
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:))))
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.1932602316, green: 0.1951736992, blue: 0.1951736992, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxtField.inputAccessoryView = calcBtn
        priceTxtField.inputAccessoryView = calcBtn
        
        hoursLbl.isHidden = true
        hoursTxtLbl.isHidden = true
        
    }

    @objc func calculate(){
        
        if let wageTxt = wageTxtField.text, let priceTxt = priceTxtField.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
                view.endEditing(true)
                hoursLbl.isHidden = false
                hoursTxtLbl.isHidden = false
                hoursLbl.text = String(Wage.getHours(forWage: wage, andPrice: price))
            }
        }
        
    }
    
    @IBAction func clearBtnPressed(_ sender: Any) {
        hoursLbl.isHidden = true
        hoursTxtLbl.isHidden = true
        wageTxtField.text = ""
        priceTxtField.text = ""
    }
    


}

