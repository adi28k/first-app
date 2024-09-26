//
//  ViewController.swift
//  firstapp
//
//  Created by Adilet Kistaubayev on 12.09.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textField2: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Touched(_ sender: Any) {
        //label.text = textField.text
        
        let a = textField.text!
        let b = textField2.text!
        
        //let sum = Int(a)! + Int(b)!
        if let NumberA = Int(a), let NumberB = Int(b) {
            let sum = NumberA + NumberB
            label.text = String(sum)
        } else {
            label.text = "Введите 2 числа"
        }
    }
    
    @IBAction func Minus(_ sender: Any) {
        
        let a = textField.text!
        let b = textField2.text!
        
        //let sum = Int(a)! + Int(b)!
guard let NumberA = Int(a), let NumberB = Int(b) else {label.text = "Введите 2 числа"
    return
}
        let sum = NumberA - NumberB
        label.text = String(sum)
        
    }
    
    @IBAction func Multiple(_ sender: Any) {
        
        let a = textField.text!
        let b = textField2.text!
        
        //let sum = Int(a)! + Int(b)!
guard let NumberA = Int(a), let NumberB = Int(b) else {label.text = "Введите 2 числа"
    return
}
        let sum = NumberA * NumberB
        label.text = String(sum)
        
        
        
    }
    
    @IBAction func division(_ sender: Any) {
        
        let a = textField.text!
        let b = textField2.text!
        
        //let sum = Int(a)! + Int(b)!
        guard let NumberA = Double(a), let NumberB = Double(b) else {label.text = "Введите 2 числа"
    return
}
        let sum = NumberA / NumberB
        label.text = String(sum)
        

        
    }
    
    
    
    
}

