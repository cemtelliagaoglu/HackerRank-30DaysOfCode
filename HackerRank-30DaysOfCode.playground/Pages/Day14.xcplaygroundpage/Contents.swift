import Foundation

class Difference {
    private var elements = [Int]()
    var maximumDifference: Int
    init(a:[Int]){
        self.elements = a
        maximumDifference = 0
    }
    
    // Write your code here
    func computeDifference(){
        guard let maxVal = a.max() else{ fatalError("Bad input")}
        guard let minVal = a.min() else{ fatalError("Bad input")}
        maximumDifference = maxVal - minVal
        
    }
        

} // End of Difference class

let n = Int(readLine()!)!
let a = readLine()!.components(separatedBy: " ").map{ Int($0)! }

let d = Difference(a: a)

d.computeDifference()

print(d.maximumDifference)
