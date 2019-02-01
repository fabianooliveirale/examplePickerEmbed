//
//  extension.swift
//  xibTeste
//
//  Created by Fabiano Oliveira on 31/01/2019.
//  Copyright © 2019 Fabiano Oliveira. All rights reserved.
//

import Foundation
import UIKit

extension UITextField{
    @IBInspectable var doneAccessory: Bool{
        get{
            return self.doneAccessory
        }
        set (hasDone) {
            if hasDone{
                keyBoardDefault()
            }
        }
    }
    
    func keyBoardDefault()
    {
        let doneToolbar: UIToolbar = UIToolbar(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 30))
        doneToolbar.barStyle = .default
        doneToolbar.tintColor = UIColor.darkGray
        
        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let done: UIBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(self.doneButtonAction))
        
        let items = [flexSpace, done]
        doneToolbar.items = items
        doneToolbar.sizeToFit()
        
        self.inputAccessoryView = doneToolbar
    }
//
//    func keyBoardBlack()
//    {
//        self.keyboardAppearance = UIKeyboardAppearance.dark
//        let doneToolbar: UIToolbar = UIToolbar(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 30))
//        doneToolbar.barStyle = .black
//        doneToolbar.tintColor = UIColor.white
//        
//        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
//        let done: UIBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(self.doneButtonAction))
//        
//        let items = [flexSpace, done]
//        doneToolbar.items = items
//        doneToolbar.sizeToFit()
//        
//        self.inputAccessoryView = doneToolbar
//    }
//    
    @objc func doneButtonAction()
    {
        self.resignFirstResponder()
    }
    
}

//extension UIToolbar {
//
//    func ToolbarPiker(mySelect : Selector) -> UIToolbar {
//
//        let toolBar = UIToolbar()
//
//        toolBar.barStyle = UIBarStyle.default
//        toolBar.isTranslucent = true
//        toolBar.tintColor = UIColor.black
//        toolBar.sizeToFit()
//
//        let doneButton = UIBarButtonItem(title: "Done", style: UIBarButtonItem.Style.plain, target: self, action: mySelect)
//        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
//
//        toolBar.setItems([ spaceButton, doneButton], animated: false)
//        toolBar.isUserInteractionEnabled = true
//
//        return toolBar
//    }
//
//}
