//
//  ViewController.swift
//  VisualBookManager
//
//  Created by jgchoiqa on 2017. 6. 5..
//  Copyright © 2017년 Joshua. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let myBook = BookManager()
    
    @IBOutlet var outputTextView:UITextView!
    
    @IBOutlet var nameTextField:UITextField!
    @IBOutlet var genreTextField:UITextField!
    @IBOutlet var authorTextField:UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let book1 = Book()
        book1.name = "스위프트 프로그래밍"
        book1.genre = "컴퓨터"
        book1.author = "야곰"
        
        //book1.bookPrint()
        let book2 = Book()
        book2.name = "룬의아이들"
        book2.genre = "소설"
        book2.author = "전민희"
        
        //book2.bookPrint()
        let book3 = Book()
        book3.name = "토비의 스프링"
        book3.genre = "컴퓨터"
        book3.author = "이일민"
        
        //book3.bookPrint()
        
        myBook.addBook(book1)
        myBook.addBook(book2)
        myBook.addBook(book3)
    }
    
    @IBAction func showAllBookAction(_ sender:AnyObject) {
        //print(myBook.showAllBook())
        outputTextView.text = myBook.showAllBook()
    }
    
    @IBAction func addBookAction(_ sender:AnyObject) {
        let bookTemp = Book()
        bookTemp.name = nameTextField.text!
        bookTemp.genre = genreTextField.text!
        bookTemp.author = authorTextField.text!
        
        myBook.addBook(bookTemp)
        outputTextView.text = "\(nameTextField.text!) 도서가 등록되었습니다."
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

