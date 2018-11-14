//
//  ViewController.swift
//  01
//
//  Created by User03 on 2018/11/14.
//  Copyright © 2018 User03. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightField: UITextField!
    @IBOutlet weak var weightField: UITextField!
    @IBOutlet weak var BMIField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func ButtonPush(_ sender: Any) {
        if let height=heightField.text,let weight=weightField.text,let heightValue=Double(height),
        let weightValue=Double(weight){
            
            let temp:Double=heightValue/100
            let result:Double=weightValue/(temp*temp)
            print(weightValue/temp*temp)
            BMIField.text=String(format:"%.2f",result)
        }
    }
    
}


