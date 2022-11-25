import Foundation

guard let N = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

if N % 2 != 0{
    print("Weird")
}else if N % 2 == 0 && N <= 5{
    print("Not Weird")
}else if N % 2 == 0 && N > 5 && N <= 20 {
    print("Weird")
}else if N % 2 == 0 && N > 20{
    print("Not Weird")
}
