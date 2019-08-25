//
//  ViewController.swift
//  MyVote
//
//  Created by David Araya on 2019-08-25.
//  Copyright © 2019 ElValle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var initButton: UIButton!
    @IBAction func initButtonPressed(_ sender: Any) {
        
        print("Button has been pressed")
    }
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let initButton = UIButton(type: .custom)
        initButton.frame = CGRect(x: 160, y: 100, width: 50, height: 50)
        initButton.layer.cornerRadius = 0.5 * initButton.bounds.size.width
        initButton.clipsToBounds = true

        view.addSubview(initButton)
        // Do any additional setup after loading the view.
    }


}

