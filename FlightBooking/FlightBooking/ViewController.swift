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
    
    @IBAction func showReturnDateAction(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        returnDateLabel.isHidden = true;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

