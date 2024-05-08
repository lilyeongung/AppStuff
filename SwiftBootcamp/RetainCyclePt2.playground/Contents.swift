import UIKit
import Foundation

class Person {
    let name: String
    var macbook: MacBook?
    
    init(name: String, macbook: MacBook?) {
        self.name = name
        self.macbook = macbook
    }
    
    deinit {
        print("\(name) is being deinitialized")
    }
}

class MacBook {
    let name: String
    weak var owner: Person?
    
    init(name: String, owner: Person?) {
        self.name = name
        self.owner = owner
    }
    
    deinit {
        print("Macbook named \(name) is being deinitialized")
    }
}




class ViewController: UIViewController {
    var andrew: Person?
    var matilda: MacBook?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createObjects()
        assignProperties()
        
    }
    
    func createObjects() {
        andrew = Person(name: "Andrew", macbook: nil)
        matilda = MacBook(name: "Matilda", owner: nil)
        
    }
    
    func assignProperties() {
        andrew?.macbook = matilda
        matilda?.owner = andrew
        
        andrew = nil
        matilda = nil
    }
    
}

