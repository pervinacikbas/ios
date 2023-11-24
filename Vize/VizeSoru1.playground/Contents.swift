import UIKit

let array1: [Int] = [1, 5, 9, 4, 7]
let array2: [Int] = [8, 4, 6, 12]

func findMedian(array1: [Int], array2: [Int]) -> Double {
    let arraySum: [Int] = array1 + array2
    let arraySumSorted = arraySum.sorted()
    let median: Double
    
    let count = arraySumSorted.count
    
    if count % 2 == 0 {
        let med1 = arraySumSorted[count / 2 - 1]
        let med2 = arraySumSorted[count / 2]
        median = Double(med1 + med2) / 2.0
    } else {
        let index = count / 2
        median = Double(arraySumSorted[index])
    }
    
    for i in arraySumSorted {
        print(i)
    }
    
    return median
}

print(findMedian(array1: array1, array2: array2))
