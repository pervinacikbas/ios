import UIKit

let array : [Int] = [2,5,9,12] // sıralı şekilde verildiği var sayıldı
var number : Int = 13

func findIndex (array : [Int], num : Int ) -> Int{
    var tempArray : [Int] = array
    
    
    let check : Bool =  array.contains(num)

    if  check == false {
        if num > array.last ?? Int.min {
            tempArray.append(num)
        }
        else {
            for i in array {
                if i > num {
                    if let index = array.firstIndex(of: i) {
                        tempArray.insert(num, at: index)
                    
                    }
                }
                
            }
        }
        
        return tempArray.firstIndex(of: num) ?? -1
    }
    else {
        return array.firstIndex(of: num) ?? -1
    }
    for i in tempArray {
        print(i)
    }
    
}
print(findIndex(array: array, num: 1))
print(findIndex(array: array, num: 7))
print(findIndex(array: array, num: 13))
