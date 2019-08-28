//
//  ViewController.swift
//  MyVote
//
//  Created by David Araya on 2019-08-25.
//  Copyright © 2019 ElValle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let locationSource = ["Canada", "United States of America", "France", "England"]
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet var locationLabel: UILabel!
    
    @IBOutlet var locationPicker: UIPickerView!
    
    @IBAction func buttonAction(_ sender: Any) {
        
    }
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
    
        let doneButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.done, target: self, action: #selector(self.doneClicked))
        
        toolBar.setItems([doneButton], animated: false)
        
        nameTextField.inputAccessoryView = UIView()
        
       locationPicker.dataSource = self
       locationPicker.delegate = self
        //view.addSubview(initButton)
        // Do any additional setup after loading the view.
    }
    
    @objc func doneClicked(){
        view.endEditing(true)
    }
}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource{
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return locationSource.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        locationLabel.text = locationSource[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return locationSource[row]
    }
}

