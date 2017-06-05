//
//  Book.swift
//  BookManager
//
//  Created by jgchoiqa on 2017. 6. 5..
//  Copyright © 2017년 최재길. All rights reserved.
//

import Foundation

class Book {
    var name = ""
    var genre = ""
    var author = ""
    
    func bookPrint() {
        print("Name : \(name)")
        print("Genre : \(genre)")
        print("Author : \(author)")
    }
}
