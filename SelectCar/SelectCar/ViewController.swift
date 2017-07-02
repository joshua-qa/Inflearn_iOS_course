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
    var carModel:[String] = []
    var carModelImage:[String] = []
    
    let tesla = ["Model S","Model X"]
    let lamborghini = ["aventador","veneno","huracan"]
    let porsche = ["911","boxter"]
    
    let teslaImageNames = ["tesla-model-s.jpg","tesla-model-x.jpg"]
    let lamborghiniImageNames = ["lamborghini-aventador.jpg","lamborghini-veneno.jpg","lamborghini-huracan.jpg"]
    let porscheImageNames = ["porsche-911.jpg","porsche-boxter.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        carModel = tesla
        carModelImage = teslaImageNames
        
        imgView.layer.cornerRadius = 50.0
        imgView.layer.masksToBounds = true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    //UIPickerView Delegate
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return carCompanyName[row]
        } else {
            return carModel[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return carCompanyName.count
        } else {
            return carModel.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 && row == 0 {
            carModel = tesla
            carModelImage = teslaImageNames
        } else if component == 0 && row == 1 {
            carModel = lamborghini
            carModelImage = lamborghiniImageNames
        } else if component == 0 && row == 2 {
            carModel = porsche
            carModelImage = porscheImageNames
        }
        
        pickerView.reloadComponent(1)
        if component == 0 {
            pickerView.selectRow(0, inComponent: 1, animated: true)
        }
        
        imgView.image = UIImage(named: carModelImage[pickerView.selectedRow(inComponent: 1)])
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

