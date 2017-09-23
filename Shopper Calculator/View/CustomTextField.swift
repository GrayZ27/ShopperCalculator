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

    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        customTextField()
        
    }
    
    func customTextField(){
        
        layer.cornerRadius = 7
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2671767979)
        textAlignment = .center
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
    }

}
