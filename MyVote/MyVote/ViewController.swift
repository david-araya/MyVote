//
//  ViewController.swift
//  MyVote
//
//  Created by David Araya on 2019-08-25.
//  Copyright © 2019 ElValle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    var nameText = ""
    
    private let locationSource = ["Canada", "United States of America", "France", "England"]
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!

    @IBOutlet var nameField: UITextField!
    
    @IBOutlet var locationPicker: UIPickerView!
    
    @IBAction func buttonAction(_ sender: Any) {
        self.nameText = nameField.text!
        performSegue(withIdentifier: "name", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! Page2ViewController
        vc.finalName = self.nameText
    }
    
    func textFieldShouldReturn(_ nameField: UITextField) -> Bool {
        return nameField.endEditing(false)
    }

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        locationPicker.dataSource = self
        locationPicker.delegate = self
        nameField.delegate = self
        //view.addSubview(initButton)
        // Do any additional setup after loading the view.
        
        //[nameField setDelegate: self]
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

