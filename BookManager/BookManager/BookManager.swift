//
//  BookManager.swift
//  BookManager
//
//  Created by jgchoiqa on 2017. 6. 5..
//  Copyright © 2017년 최재길. All rights reserved.
//

import Foundation

class BookManager {
    var bookList = [Book]()
    
    func addBook(_ bookObject:Book) {
        bookList += [bookObject]
    }
    
    func showAllBook() -> String {
        var strTemp = ""
        for bookTemp in bookList {
            strTemp += "Name : \(bookTemp.name)\n"
            strTemp += "Genre : \(bookTemp.genre)\n"
            strTemp += "Author : \(bookTemp.author)\n"
            strTemp += "-----------------------------\n"
        }
        return strTemp
    }
    
    func countBook() -> Int {
        return bookList.count
    }
    
    func findBook() {
        
    }
    
    func removeBook() {
        
    }
}
