/*
 Strong references to each other cause retain cycles -> memory leaks
 
 */

import UIKit


// MARK: - For Variables
class School {
    private var students = [Student]()
    
    func add(student: Student) {
        students.append(student)
    }
}

class Student {
    private weak var school: School?
    
    required init(school: School) {
        self.school = school
    }
}


let school = School()
let student = Student(school: school)
school.add(student: student)


// MARK: - For Protocols
protocol AndrewsVCDelegate: AnyObject {
    func setup(with data: [Any])
}

class AndrewsVC: UIViewController {
    weak var delegate: AndrewsVCDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}


// MARK: - For Closures
class ClosureExample {
    private var count = 0
    
    private var closure: (() -> ()) = { }
    
    init() {
        closure = { [weak self] in
            self?.count += 1
            print(self?.count)
        }
    }
    
    func runClosure() {
        closure()
    }
}
