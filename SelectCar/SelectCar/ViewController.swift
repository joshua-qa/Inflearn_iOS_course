//
//  ViewController.swift
//  SelectCar
//
//  Created by jgchoiqa on 2017. 7. 2..
//  Copyright © 2017년 Joshua. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet var imgView: UIImageView!
    
    let carCompanyName = ["Tesla","Lamborghini","Porsche"]
    
    let tesla = ["Model S","Model X"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    //UIPickerView Delegate
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return carCompanyName[row]
        } else {
            return tesla[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return carCompanyName.count
        } else {
            return tesla.count
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

