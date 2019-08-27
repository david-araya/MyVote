//
//  Page2ViewController.swift
//  MyVote
//
//  Created by David Araya on 2019-08-26.
//  Copyright © 2019 ElValle. All rights reserved.
//

import UIKit

class Page2ViewController: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    
    var finalName = ""
    
    override func viewDidLoad() {
        
        nameLabel.text = finalName
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
