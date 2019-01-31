//
//  ViewController.swift
//  xibTeste
//
//  Created by Fabiano Oliveira on 25/01/2019.
//  Copyright © 2019 Fabiano Oliveira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var datePickerTextView: UITextField!
    let datePicker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        datePicker.datePickerMode = .date
        datePicker.addTarget(self, action: #selector(ViewController.dateChanged(datePicker:)), for: .valueChanged)
        
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        
        view.addGestureRecognizer(tap)
        
        datePickerTextView.inputView = datePicker
        
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
    
    @objc func dateChanged(datePicker: UIDatePicker){
        let dateFormat = DateFormatter()
        dateFormat.dateFormat = "dd/MM/yyyy"
        datePickerTextView.text = dateFormat.string(from: datePicker.date)
    }
}
