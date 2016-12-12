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
    
    init?(length: Int, name: String, shoutText: String) {
        self.length = length
        self.simpleShout = shoutText
        
        super.init(name: name)
        
        if length < 0 {
            return nil
        }
    }
    
    func shout(text: String) {
        print("Shout text is '\(text)', just so you know. Simple shout is '\(simpleShout)'");
    }
}

protocol ShoutProtocol {
    var simpleShout: String { get }
    func shout(text: String)
}

var a = GeometricalFigure(name: "Abstract Figure")
a.showName()

var b = Square(length: 3, name: "Square", shoutText: "Juhu")!
b.showName()
     
var c = Square(length: 3, name: "New Square", shoutText: "What's up?")!
c.showName()
c.shout("wohoo")