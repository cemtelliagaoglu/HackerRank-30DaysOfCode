import Foundation

var i = 4
var d = 4.0
var s = "HackerRank "
// Declare second integer, double, and String variables.
var inpInt:Int = 0
var inpDbl:Double = 0
var inpStr:String = ""

// Read and save an integer, double, and String to your variables.
inpInt = Int(readLine()!)!
inpDbl = Double(readLine()!)!
inpStr = readLine()!

// Print the sum of both integer variables on a new line.
print(i + inpInt)
// Print the sum of the double variables on a new line.
print(d + inpDbl)
// Concatenate and print the String variables on a new line
print(s + inpStr)
// The 's' variable above should be printed first.
