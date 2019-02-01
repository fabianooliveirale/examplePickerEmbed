//
//  NewViewController.swift
//  xibTeste
//
//  Created by Fabiano Oliveira on 30/01/2019.
//  Copyright © 2019 Fabiano Oliveira. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var containerTable: UIView!
    @IBOutlet weak var labelUm: UILabel!
    @IBOutlet weak var labelDois: UILabel!
    
    var ntvc: newTableViewController?
    
    let datePicker = UIDatePicker()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let toolBar = UIToolbar().ToolbarPiker(mySelect: #selector(NewViewController.dismissPicker))
//
//        textField.inputAccessoryView = toolBar
        
        datePicker.datePickerMode = .date
        datePicker.addTarget(self, action: #selector(self.dateChanged(_:)), for: .valueChanged)

        textField.inputView = datePicker
        textField.keyBoardDefault()
    }

    @objc func dateChanged(_: Any){
        let dateFormat = DateFormatter()
        dateFormat.dateFormat = "dd/MM/yyyy"
        textField.text = dateFormat.string(from: datePicker.date)
    }
    
    @IBAction func buttonSalvar(_ sender: Any) {
        labelUm.text = ntvc!.textFieldOne.text
        labelDois.text = ntvc!.textFieldTwo.text
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "containerSalvar" {
            if let vc = segue.destination as? newTableViewController{
                ntvc = vc
            }
        }
    }
}



