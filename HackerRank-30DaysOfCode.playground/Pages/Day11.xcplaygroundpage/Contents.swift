import Foundation

func findMaxHourglass(_ array: [[Int]])-> Int{
    var results:[Int] = []
    for i in 0..<array.count - 2{
        for j in 0..<array.count - 2{
            let sumHourglass = array[j][i] + array[j][i + 1] + array[j][i + 2] + array[j + 1][i + 1] +
            array[j + 2][i] + array[j + 2][i + 1] + array[j + 2][i + 2]
            results.append(sumHourglass)
        }
    }
    
    let maxSum = results.max()!
    return maxSum
}

var arr = [[Int]]()

for _ in 1...6 {
    guard let arrRowTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }

    let arrRow: [Int] = arrRowTemp.split(separator: " ").map {
        if let arrItem = Int($0) {
            return arrItem
        } else { fatalError("Bad input") }
    }

    guard arrRow.count == 6 else { fatalError("Bad input") }

    arr.append(arrRow)
}

guard arr.count == 6 else { fatalError("Bad input") }

print(findMaxHourglass(arr))
