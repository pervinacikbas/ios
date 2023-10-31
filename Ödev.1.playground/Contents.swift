import UIKit
func karakterTemizle() {
    print("Metni girin:")
    if let metin = readLine(), !metin.isEmpty {
        print("Silinecek karakter sayısını girin:")
        if let sayiStr = readLine(), let sayi = Int(sayiStr) {
            let sonuc = temizle(metin: metin, sayi: sayi)
            print("Sonuç: \(sonuc)")
        } else {import UIKit

func kelimeSilme() {
    print("Metni girin:")
    if let metin = readLine(), !metin.isEmpty {
        print("Silinecek karakter sayısını girin:")
        if let sayiStr = readLine(), let sayi = Int(sayiStr) {
            let sonuc = temizle(metin: metin, sayi: sayi)
            print("Sonuç: \(sonuc)")
        } else {
            print("Geçersiz sayı girdiniz.")
        }
    } else {
        print("Metin girilmedi veya boş.")
    }
}

func temizle(metin: String, sayi: Int) {
    var sayac = [Character: Int]()
    
    // Karakter sayılarını sayma
    for char in metin {
        sayac[char, default: 0] += 1
    }
    
    // Silinmesi gereken karakterleri belirleme
    var silinecekKarakterler = Set<Character>()
    for (karakter, tekrarSayisi) in sayac {
        if tekrarSayisi >= sayi {
            silinecekKarakterler.insert(karakter)
        }
    }
    
    // Metindeki sayidan fazla olan karakterleri silme
    var temizlenmisMetin = metin
       temizlenmisMetin.removeAll { karakter in
           return silinecekKarakterler.contains(karakter)
       }
    
   
}

kelimeSilme()

            print("Geçersiz sayı girdiniz.")
        }
    } else {
        print("Metin girilmedi veya boş.")
    }
}

func temizle(metin: String, sayi: Int) -> String {
    var sayac = [Character: Int]()
    
    // Karakter sayılarını say
    for char in metin {
        sayac[char, default: 0] += 1
    }
    
    // Silinmesi gereken karakterleri belirle
    var silinecekKarakterler = Set<Character>()
    for (karakter, tekrarSayisi) in sayac {
        if tekrarSayisi >= sayi {
            silinecekKarakterler.insert(karakter)
        }
    }
    
    // Metindeki belirli karakterleri sil
    var temizlenmisMetin = metin
    temizlenmisMetin.removeAll { karakter in
        return silinecekKarakterler.contains(karakter)
    }
    
    return temizlenmisMetin
}

karakterTemizle()

