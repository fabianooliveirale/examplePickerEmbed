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
    
    let datePicker = UIDatePicker()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        datePicker.datePickerMode = .date
        datePicker.addTarget(self, action: #selector(self.dateChanged(_:)), for: .valueChanged)
        
        textField.inputView = datePicker
    }
    
    @objc func dateChanged(_: Any){
        let dateFormat = DateFormatter()
        dateFormat.dateFormat = "dd/MM/yyyy"
        textField.text = dateFormat.string(from: datePicker.date)
    }
    
    @IBAction func buttonSalvar(_ sender: Any) {
        performSegue(withIdentifier: "containerSalvar", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "containerSalvar" {
                let vc = segue.destination as? newTableViewController
                if let tf1:UITextField = vc?.textFieldOne
                {
                    if let tf2:UITextField = vc?.textFieldTwo
                    {
                        if let t1: String = tf1.text
                        {
                            if let t2: String = tf2.text
                            {
                                labelUm.text =  t1
                                labelDois.text =  t2
                            }
                        }
                    }
                }
        }
    }
}
