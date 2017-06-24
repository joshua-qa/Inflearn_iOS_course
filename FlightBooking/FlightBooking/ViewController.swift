//
//  ViewController.swift
//  FlightBooking
//
//  Created by jgchoiqa on 2017. 6. 20..
//  Copyright © 2017년 Joshua. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var selectDatePicker: UIDatePicker!
    
    @IBOutlet var departureDateButton: UIButton!
    
    @IBOutlet var returnDateLabel: UILabel!
    @IBOutlet var returnDateButton: UIButton!
    
    @IBAction func showReturnDateAction(_ sender: AnyObject) {
        returnDateLabel.isHidden = !(sender as! UISwitch).isOn
        returnDateButton.isHidden = !(sender as! UISwitch).isOn
    }
    
    var buttonTag:Int = 1
    @IBAction func selectedDateAction(_ sender: Any) {
        let formatter = DateFormatter()
        formatter.dateFormat = "YY-MM-d hh:mma"
        
        let dateString = formatter.string(from: selectDatePicker.date)
        
        if buttonTag == 1 {
            departureDateButton.setTitle(dateString, for: UIControlState())
        } else {
            returnDateButton.setTitle(dateString, for: UIControlState())
        }
    }
    
    @IBAction func showDatePickerAction(_ sender: Any) {
        if selectDatePicker.isHidden == false {
            selectDatePicker.isHidden = true
        } else {
            selectDatePicker.isHidden = false
        }
        
        buttonTag = (sender as! UIButton).tag
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        returnDateLabel.isHidden = true;
        returnDateButton.isHidden = true;
        selectDatePicker.isHidden = true;
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        selectDatePicker.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

