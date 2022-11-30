import Foundation

func printEvenAndOdd(string: String) {
    // Write your code here
    
    let arr = Array(string)
    var oddIndexed = ""
    var evenIndexed = ""
    for index in 0..<arr.count{
        if index % 2 == 0{
            evenIndexed.append(arr[index])
        }else{
            oddIndexed.append(arr[index])
        }
    }
    print("\(evenIndexed) \(oddIndexed)")
}
