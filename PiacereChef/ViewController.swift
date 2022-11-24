//
//  ViewController.swift
//  PiacereChef
//
//  Created by Mario Rúa on 18/11/22.
//

import UIKit
import AppCenterCrashes

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBAction func buttonAction(_ sender: Any) {
        label.text = "Button tapped!"
        //Crashes.generateTestCrash()
        // Some change
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


}

