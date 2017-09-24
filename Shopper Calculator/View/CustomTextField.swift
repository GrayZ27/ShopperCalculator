//
//  CustomTextField.swift
//  Shopper Calculator
//
//  Created by Gray Zhen on 9/23/17.
//  Copyright © 2017 GrayStudio. All rights reserved.
//

import UIKit

@IBDesignable

class CustomTextField: UITextField {


    override func prepareForInterfaceBuilder() {
        customTextField()
    }

    
    override func draw(_ rect: CGRect) {
        
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: frame.size.height / 2 - size / 2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.9721407043, green: 0.09617938747, blue: 0.1981451356, alpha: 0.704302226)
        currencyLbl.textColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        currencyLbl.layer.cornerRadius = 7
        currencyLbl.clipsToBounds = true
        currencyLbl.textAlignment = .center
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        customTextField()
        
    }
    
    func customTextField(){
        
        layer.cornerRadius = 7
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2671767979)
        textAlignment = .center
        clipsToBounds = true
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 0.9675543072, green: 0.9932169693, blue: 1, alpha: 1)
        }
        
    }

}
