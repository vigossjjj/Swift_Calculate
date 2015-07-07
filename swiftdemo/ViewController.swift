//
//  ViewController.swift
//  swiftdemo
//
//  Created by vigoss on 15/7/7.
//  Copyright © 2015年 jiang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var value1: UITextField!
    
    @IBOutlet var value2: UITextField!
    
    @IBOutlet var result: UILabel!
    
    var memoryWaring:Bool?

    
    @IBAction func calculate() {
        if (self.value1.text!.isEmpty || self.value2.text!.isEmpty){
            self.result.text = "no value input!"
        }else{
            let num1 = Int(self.value1.text!)
            let num2 = Int(self.value2.text!)
            self.result.text = String(self.sum(num1!, value2: num2!))
        }
        
    }
    
    func sum(value1:Int, value2:Int) -> Int{
        
        var res:Int?
        
        res = value1 + value2
    
        return res!
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        memoryWaring = true
    }


}

