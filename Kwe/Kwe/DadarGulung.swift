//
//  DadarGulung.swift
//  Kwe
//
//  Created by ro on 25/05/23.
//

import Foundation
import SwiftUI
struct Hasil {
    var photoKue : String = ""
    var judul : String = ""
    var asal : String = ""
    var bahan : String = ""
    var deskripsi : String = ""
    init(){
        
    }
    init(photoKue : String, judul : String, asal : String, bahan : String, deskripsi : String){
        self.photoKue = photoKue
        self.judul = judul
        self.asal = asal
        self.bahan = bahan
        self.deskripsi = deskripsi
    }
    
    func handleResult(hasilModel : String) -> Hasil{
        var hasilKastengel = Hasil()
        if hasilModel == "kue_kastengel"{
            hasilKastengel = Hasil(photoKue: "Kastangel" , judul: "Kastangel", asal: "Indonesia", bahan: "Tepung terigu, tepung jagung, bakpuder, kuning telur, mentega atau margarin, garam, gula, keju cheddar", deskripsi: "Kastangel berbentuk persegi panjang, panjangnya sekitar 3–4 cm dan lebarnya 1 cm, dan dipanggang di dalam oven hingga kuning keemasan biasanya dihidangkan pada berbagai macam perayaan, mulai dari Natal, Idulfitri, hingga tahun baru Imlek dan hari besar lainnya di Indonesia")
        }
        else if hasilModel == "kue_dadar_gulung"{
            hasilKastengel = Hasil(photoKue: "Dadar" , judul: "Dadar Gulung", asal: "Jawa dan Sumatra", bahan: "Kelapa parut, gula aren, tepung beras, pandan/suji", deskripsi: "Kue dadar gulung merupakan makanan yang diisi dengan parutan kelapa yang dicampur dengan gula jawa cair. Isi ini disebut unti. Kulit dadar gulung identik dengan warna hijau karena diberi pewarna daun suji. Kulit dadar gulung yang berbentuk seperti telur dadar menjadi salah satu alasan mengapa makanan ini disebut kue dadar gulung")
        }
        else if hasilModel == "kue_klepon"{
            hasilKastengel = Hasil(photoKue: "Klepon" , judul: "Klepon", asal: "Jawa", bahan: "Tepung beras ketan, pandan/suji, gula merah, kelapa parut", deskripsi: "Klepon adalah kue tradisional dari Jawa yang termasuk ke dalam kelompok jajanan pasar. Klepon dikenal pula di wilayah Sumatra, Sulawesi, dan Malaysia serta pada masyarakat Betawi. Panganan ini biasa dijajakan dengan getuk dan cenil (juga disebut cetil) sebagai camilan di pagi atau sore hari")
        }
        else if hasilModel == "kue_lapis"{
            hasilKastengel = Hasil(photoKue: "Lapis" , judul: "Kue Lapis", asal: "Indonesia", bahan: "Tepung beras, tepung kanji, santan, gula pasir, garam dan pewarna", deskripsi: "Kue Lapis biasanya terdiri dari dua warna yang berlapis-lapis, ini yang memberi nama kue ini. Kue ini banyak ditemui di daerah-daerah di Indonesia khususnya di pedagang pasar tradisional maupun toko kue jajanan tradisional.")
        }
        else if hasilModel == "kue_lumpur"{
            hasilKastengel = Hasil(photoKue: "Lumpur" , judul: "Kue Lumpur", asal: "Jakarta", bahan: "Santan, kentang, tepung terigu, vanila, kismis dan telur", deskripsi: "Kue Lumpur merupakan kue khas Betawi yang dikenal memiliki tekstur yang lembut serta bercita rasa manis dan gurih. Kue basah satu ini mempunyai ciri khas, yakni terdapat kismis di atasnya.")
        }
        else if hasilModel == "kue_putri_salju"{
            hasilKastengel = Hasil(photoKue: "Putri" , judul: "Putri Salju", asal: "Indonesia", bahan: "Tepung terigu, tepung maizena, mentega, kuning telur dan gula halus", deskripsi: "Putri Salju adalah sejenis kue kering yang berbentuk bulan sabit dan di atasnya diselimuti dengan gula halus seperti salju. Kue putri salju biasanya menjadi sajian khas pada hari raya, seperti Idulfitri, Natal, dan tahun baru Imlek.")
        }
        else if hasilModel == "kue_risoles"{
            hasilKastengel = Hasil(photoKue: "Risol" , judul: "Risoles", asal: "Indonesia", bahan: "Tepung terigu, telur, mentega, dan isian (sayur atau daging)", deskripsi: "Risoles adalah hidangan yang berbentuk gulungan beraneka isian seperti sayur, daging, ragout, atau gabungan ketiganya. Dulunya makanan ini hanya sekadar panekuk yang digoreng Pada perkembangan berikutnya, makanan ini barulah diisi dengan daging cincang.")
        }
        else if hasilModel == "kue_serabi"{
            hasilKastengel = Hasil(photoKue: "Serabi" , judul: "Serabi", asal: "Jawa", bahan: "Tepung beras, santan kelapa, dan garam", deskripsi: "Serabi adalah jajanan tradisional yang berasal dari Indonesia yang diperkirakan sudah dikenal sejak zaman Kerajaan Mataram. Pakar kuliner, Bondan Winarno mengatakan bahwa kemungkinan makanan ini mendapat pengaruh dari budaya kuliner India dan juga Belanda.")
        }
        
        
        
        return hasilKastengel
        
    }
}
