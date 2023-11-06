import UIKit
func findPrime(number: Int) {
    if number <= 1 {
            print("sayı asal değil.")
            return
        }

        for i in stride(from: number / 2, to: 1, by: -1) {
            if number % i == 0 {
                print("sayı asal değil.")
                return
            }
        }
        print("sayı asal.")
}
findPrime(number: 10)
