import Foundation

func findConsecutiveAfterConvertToBinary(n:Int) -> Int{
    var resStr = ""
    var number = n
    var result = 1
    var resContainer:[Int] = []
    while number >= 1{
        resStr.append(String(number % 2))
        number /= 2
    }
    let binaryDigits = Array(resStr)

    for i in 0..<binaryDigits.count - 1{
        if binaryDigits[i] == "1" && binaryDigits[i + 1] == "1"{
            result += 1
        }else{
            resContainer.append(result)
            result = 1
        }
    }
    
    // If resContainer is empty return result
    guard let maxConsec = resContainer.max() else{ return result}
    
    if result > maxConsec{
        return result
    }else{
        return maxConsec
    }
}


guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }
print(findConsecutiveAfterConvertToBinary(n: n))
