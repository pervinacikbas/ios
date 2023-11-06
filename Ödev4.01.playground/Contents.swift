import UIKit
func doBiggest(number1: Int, number2: Int) {
    var finalNum = 0
    if number1 == 0 {
        finalNum = number2*10
    }
    var numberArr: [Int] = []
    var tempNumber = number1
    let valueToInsert = number2
    
    
    while tempNumber > 0 {
        let digit = tempNumber % 10
        numberArr.append(digit)
        tempNumber /= 10
    }
     numberArr.reverse()
    for (index, digit) in numberArr.enumerated() {
        if digit < valueToInsert {
            numberArr.insert(valueToInsert, at: index)
            break
        }
    }
    
    var a = 1
    numberArr.reverse()
    for i in numberArr {
       
        finalNum += (i*a)
        a *= 10
    }
    print(finalNum)

}

doBiggest(number1: 0, number2: 7)
