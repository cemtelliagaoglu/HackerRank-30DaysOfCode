import Foundation

// Declaration: HackerRank does not support Swift for this question. So I've sent the answer in Python.

// Swift Code
class Book{
    let title: String
    let author: String
    
    init(_ title: String, _ author: String){
        self.title = title
        self.author = author
    }
    func display(){
        print("Book")
    }
}

class MyBook: Book{
    let price: Int
    
    init(title: String, author: String, price: Int) {
        self.price = price
        super.init(title,author)
        
    }
    
    override func display(){
        print("Title: \(title)")
        print("Author: \(author)")
        print("Price: \(price)")
    }
    
}



// Python Code
/*
 
 from abc import ABCMeta, abstractmethod
 class Book(object, metaclass=ABCMeta):
     def __init__(self,title,author):
         self.title=title
         self.author=author
     @abstractmethod
     def display(): pass

 #Write MyBook class
 class MyBook(Book):
     
     def __init__(self,title, author, price):
         Book.__init__(self,title,author)
         self.price = price
     def display(self):
         print("Title:", title)
         print("Author:", author)
         print("Price:", price)
     

 title=input()
 author=input()
 price=int(input())
 new_novel=MyBook(title,author,price)
 new_novel.display()
 */
