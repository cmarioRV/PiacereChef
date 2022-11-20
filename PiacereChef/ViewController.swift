//
//  ViewController.swift
//  PiacereChef
//
//  Created by Mario Rúa on 18/11/22.
//

import UIKit
import AppCenterCrashes

class ViewController: UIViewController {

    @IBAction func buttonAction(_ sender: Any) {
        // Test change
        Crashes.generateTestCrash()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


}

