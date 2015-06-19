import Foundation

class Singleton : NSObject {

    static var nextId = 1;
    let id = nextId++;
    
    override init() {
        println("new Singleton")
    }
    
    func sayHiToTheNiceFolks() {
        println("Hi!")
    }
}