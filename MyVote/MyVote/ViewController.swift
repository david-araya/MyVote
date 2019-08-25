//
//  ViewController.swift
//  MyVote
//
//  Created by David Araya on 2019-08-25.
//  Copyright © 2019 ElValle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var initLabel: UIButton!
  
    @IBAction func initLabelPress(_ sender: UIButton) {
        print("Button has been pressed")
    }
    
    @IBOutlet var initButton: MyVote!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        print("Button has been pressed")
    }
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        view.addSubview(initButton)
        // Do any additional setup after loading the view.
    }


}

