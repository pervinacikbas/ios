import UIKit

var arrayDic = [Character: Int]()
var array: [Int] = [7, 7, 6, 1, 3, 7, 5, 6, 3, 4, 7]

func delMoreThenOne(array: [Int]) -> [Character] {
    var finalArray = [Character]()
    var array1 = array.sorted()
    for i in array1 {
        print(i)
    }
    
    for i in array1 {
        arrayDic[Character("\(i)"), default: 0] += 1
    }

    
    for i in arrayDic.keys {
        finalArray.append(i)
    }
    var finalArray1 = finalArray.sorted()
    for i in finalArray1 {
        print(i)
    }
    
    for i in arrayDic.values {
        if i > 1 {
            for j in 2...i {
                finalArray1.append("-")
            }
        }
    }

    return finalArray1
}

print(delMoreThenOne(array: array))
