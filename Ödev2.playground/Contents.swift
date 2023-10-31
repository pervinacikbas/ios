import UIKit

func kelimeSayacı(metin: String) {
    let parçalar = metin.split(separator: " ")
    var kelimeSayacı = [String: Int]()

    for parça in parçalar {
        let kelime = parça.lowercased()
        if let sayı = kelimeSayacı[kelime] {
            kelimeSayacı[kelime] = sayı + 1
        } else {
            kelimeSayacı[kelime] = 1
        }
    }

    for (kelime, sayı) in kelimeSayacı {
        print("\(kelime): \(sayı) kez geçiyor")
    }
}

print("Metni girin:")
if let metin = readLine() {
    kelimeSayacı(metin: metin)
}
