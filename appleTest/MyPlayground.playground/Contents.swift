//: Playground - noun: a place where people can play

import Cocoa

class GeometricalFigure {
    var name: String
    
    init(name: String){
        self.name = name
    }
    
    func showName() {
        print(name)
    }
}

class Square: GeometricalFigure, ShoutProtocol {
    var length: Int
    var simpleShout: String
    var bla: [String]
    
    init?(length: Int, name: String, shoutText: String, bla: [String]) {
        self.length = length
        self.simpleShout = shoutText
        self.bla = bla
        
        super.init(name: name)
        
        if length < 0 {
            return nil
        }
    }
    
    func shout(text: String) {
        print("Shout text is '\(text)', just so you know. Simple shout is '\(simpleShout)'");
    }
    
    func printArray() {
        print("\nArray contains: ")
        for entry in bla {
            print(entry)
        }
        print()
    }
}

protocol ShoutProtocol {
    var simpleShout: String { get }
    func shout(text: String)
}

var a = GeometricalFigure(name: "Abstract Figure")
a.showName()

var b = Square(length: 3, name: "Square", shoutText: "Juhu", bla: ["1", "2","3","4"])!
b.showName()
b.printArray()
     
var c = Square(length: 3, name: "New Square", shoutText: "What's up?", bla: [])!
c.showName()
c.shout("wohoo")
c.printArray()

var d = Square(length: 20, name: "MegaSquare", shoutText: "I am mega square", bla: ["12345"])!
d.printArray()