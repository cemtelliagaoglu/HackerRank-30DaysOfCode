import Foundation

func factorial(n: Int) -> Int {
    // Write your code here
    if n == 2{
        return 2
    }
    return n * factorial(n: n - 1)
}
