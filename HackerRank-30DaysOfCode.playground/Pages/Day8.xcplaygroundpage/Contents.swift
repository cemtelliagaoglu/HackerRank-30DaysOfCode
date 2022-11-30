// Enter your code here. Read input from STDIN. Print output to STDOUT

let n = Int(readLine()!)!
var phoneBook:[String: String] = [:]

for _ in 0..<n{
    let newContact = readLine()!.split(separator: " ")
    phoneBook[String(newContact[0])] = String(newContact[1])
}

for _ in 0..<n {
    guard let name = readLine() else { break }
    if let phone = phoneBook[name] {
        print("\(name)=\(phone)")
    } else {
        print("Not found")
    }
}

