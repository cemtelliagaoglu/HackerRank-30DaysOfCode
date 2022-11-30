import Foundation

func printReverse(arr:[Int]){
    var result = ""
    let reversed = arr.reversed()
    for n in reversed{
        result.append(String(n) + " ")
    }
    result.dropLast()
    print(result)
}
