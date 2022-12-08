import Foundation

// Class Person
class Person {
    private let firstName: String
    private let lastName: String
    private let id: Int

    // Initializer
    init(firstName: String, lastName: String, id: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.id = id
    }

    // Print person data
    func printPerson() {
        print("Name: \(lastName), \(firstName)")
        print("ID: \(id)")
    }
} // End of class Person

// Class Student
class Student: Person {
    var testScores: [Int]
    
    // Write your initializer here
    init(firstName: String, lastName: String, id: Int, scores: [Int]){
        self.testScores = scores
        super.init(firstName: firstName, lastName: lastName, id: id)
    }
    
    // Write your method here
    func calculate() -> Character {
        var sum = 0
        for score in scores{
            sum += score
        }
        let avg = sum / scores.count
        if avg >= 90{
            return "O"
        }else if avg >= 80{
            return "E"
        }else if avg >= 70{
            return "A"
        }else if avg >= 55{
            return "P"
        }else if avg >= 40{
            return "D"
        }else{
            return "T"
        }
    }
}



let nameAndID = readLine()!.components(separatedBy: " ")
let _ = readLine()
let scores = readLine()!.components(separatedBy: " ").map{ Int($0)! }

let s = Student(firstName: nameAndID[0], lastName: nameAndID[1], id: Int(nameAndID[2])!, scores: scores)

s.printPerson()

print("Grade: \(s.calculate())")
