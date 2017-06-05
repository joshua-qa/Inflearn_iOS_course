//
//  main.swift
//  BookManager
//
//  Created by jgchoiqa on 2017. 6. 5..
//  Copyright © 2017년 최재길. All rights reserved.
//

import Foundation

var book1 = Book()
book1.name = "스위프트 프로그래밍"
book1.genre = "컴퓨터"
book1.author = "야곰"

//book1.bookPrint()

var book2 = Book()
book2.name = "룬의아이들"
book2.genre = "소설"
book2.author = "전민희"

//book2.bookPrint()

var book3 = Book()
book3.name = "토비의 스프링"
book3.genre = "컴퓨터"
book3.author = "이일민"

//book3.bookPrint()

var myBook = BookManager()

myBook.addBook(book1)
myBook.addBook(book2)
myBook.addBook(book3)

print(myBook.showAllBook())

print(myBook.countBook())

//var findResult = myBook.findBook("토비의 스프링")
var findResult = myBook.findBook("test")

if findResult != nil {
    print("\(findResult!) 를 찾았습니다.")
} else {
    print("찾으시는 책이 없습니다.")
}

myBook.removeBook("룬의아이들")

print(myBook.showAllBook())
