import Foundation

func solve(meal_cost: Double, tip_percent: Int, tax_percent: Int) -> Void {
    // Write your code here
    let addition = (Double(tax_percent) + Double(tip_percent)) / 100
    let bill = meal_cost * (1 + addition)
    let roundedBill: Int = Int(bill.rounded())
    print(roundedBill)
}
