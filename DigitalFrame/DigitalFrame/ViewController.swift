//
//  ViewController.swift
//  DigitalFrame
//
//  Created by jgchoiqa on 2017. 6. 7..
//  Copyright © 2017년 Joshua. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var imgView:UIImageView!
    @IBOutlet var toggleButton:UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        let cuteImages = [UIImage(named:"0.jpg")!,
                          UIImage(named:"1.jpg")!,
                          UIImage(named:"2.jpg")!,
                          UIImage(named:"3.jpg")!,
                          UIImage(named:"4.jpg")!,
                          UIImage(named:"5.jpg")!,
                          UIImage(named:"6.jpg")!,
                          UIImage(named:"7.jpg")!,
                          UIImage(named:"8.jpg")!,
                          UIImage(named:"9.jpg")!,
                          UIImage(named:"10.jpg")!]
        
        imgView.animationImages = cuteImages
        imgView.animationDuration = 15.0
    }
    
    @IBAction func toggleAction(_ sender:AnyObject) {
        if imgView.isAnimating {
            imgView.stopAnimating()
            toggleButton.setTitle("Start", for: UIControlState.normal)
        } else {
            imgView.startAnimating()
            toggleButton.setTitle("Stop", for: UIControlState.normal)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

