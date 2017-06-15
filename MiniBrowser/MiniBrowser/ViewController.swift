//
//  ViewController.swift
//  MiniBrowser
//
//  Created by jgchoiqa on 2017. 6. 15..
//  Copyright © 2017년 Joshua. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var bookMarkSegmentedControl: UISegmentedControl!
    @IBOutlet var urlTextField: UITextField!
    @IBOutlet var mainWebView: UIWebView!
    
    @IBAction func bookMarkAction(_ sender: AnyObject) {
        let bookMarkUrl = bookMarkSegmentedControl.titleForSegment(at: bookMarkSegmentedControl.selectedSegmentIndex)!
        let urlString = "https://www.\(bookMarkUrl).com"
        mainWebView.loadRequest(URLRequest(url: URL(string: urlString)!))
        urlTextField.text = urlString
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        var urlString = "\(urlTextField.text!)"
        if !urlString.hasPrefix("https://") {
            urlString = "https://\(urlTextField.text!)"
        }
        mainWebView.loadRequest(URLRequest(url: URL(string: urlString)!))
        textField.resignFirstResponder()
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let urlString = "https://www.facebook.com"
        mainWebView.loadRequest(URLRequest(url: URL(string: urlString)!))
        urlTextField.text = urlString
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

