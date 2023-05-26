//
//  Result.swift
//  Kwe
//
//  Created by ro on 24/05/23.
//

import SwiftUI

struct Kastangel: View {
    
    @Binding var result : Hasil
    var body: some View {
//        VStack {
//            Image("Kastangel")
//                .resizable()
//                .scaledToFit()
//                .frame(width: 250, height: 250)
//                .padding(.bottom, 25.0)
//            HStack (spacing: 7) {
//                Circle()
//                    .foregroundColor(Color(UIColor(named: "HijauCirc")!))
//                    .frame(width: 13, height: 13)
//                Circle()
//                    .foregroundColor(Color(UIColor(named: "HijauCirc")!))
//                    .frame(width: 13, height: 13)
//                Circle()
//                    .foregroundColor(Color(UIColor(named: "HijauCirc")!))
//                    .frame(width: 13, height: 13)
//                Circle()
//                    .foregroundColor(Color(UIColor(named: "HijauCirc")!))
//                    .frame(width: 13, height: 13)
//            }
//            .padding(.leading, -169.0)
//            VStack (alignment: .leading, spacing: 15){
//                Text("Kastangel")
//                    .font(.custom("hotpizza", size: 43)).foregroundColor(Color(UIColor(named: "DarkGrey")!))
//                    .multilineTextAlignment(.leading)
//
//                VStack(alignment: .leading) {
//                    HStack {
//                        Text("Asal")
//                            .font(.system(size: 14))
//                            .fontWeight(.semibold)
//                            .foregroundColor(.gray).padding(.trailing, 70.0)
//                        Text("Jawa dan Sumatra")
//                            .font(.system(size: 14))
//                            .fontWeight(.bold)
//                            .foregroundColor(Color(UIColor(named: "HijauTua")!))
//                    }
//                    .padding(.bottom, 1.0)
//
//                    HStack(alignment: .top) {
//                        Text("Bahan Utama")
//                            .font(.system(size: 14))
//                            .fontWeight(.semibold)
//                            .foregroundColor(.gray).padding(.trailing, 9.0)
//                        Text("Tepung terigu, tepung jagung, bakpuder, kuning telur, mentega atau margarin, garam, gula, keju cheddar")
//                            .font(.system(size: 14))
//                            .padding(.trailing)
//                            .lineSpacing(4)
//                            .fontWeight(.semibold)
//                            .multilineTextAlignment(.leading)
//
//                            .foregroundColor(Color(UIColor(named: "HijauTua")!))
//                            .multilineTextAlignment(.leading)
//                            .lineLimit(4)
//                    }
//                    .padding(.bottom, 16.0)
//
//                }
//                .padding(.leading, 2.0)
//                Text("Kastangel berbentuk persegi panjang, panjangnya sekitar 3–4 cm dan lebarnya 1 cm, dan dipanggang di dalam oven hingga kuning keemasan biasanya dihidangkan pada berbagai macam perayaan, mulai dari Natal, Idulfitri, hingga tahun baru Imlek dan hari besar lainnya di Indonesia")
//                    .minimumScaleFactor(0.1)
//                    .padding(.trailing)
//                    .lineSpacing(8)
//                    .font(.custom("SFP Regular", size: 16)).foregroundColor(Color(UIColor(named: "HijauTua")!))
//
////                Text("Kembali")
////                    .font(.custom("SFP Bold", size: 18)).foregroundColor(.white)
////                    .frame(width: 215, height: 44, alignment: .center)
////                 .background(Color(UIColor(named: "HijauTua")!))
////                 .clipShape(RoundedRectangle(cornerRadius: 22 ))
////                 .position(x: 194, y: 78)
//
//            }
//            .padding(.leading, 22.0)
//        }
//        .padding(.top, 16.0)
        VStack {
            Image(result.photoKue)
                .resizable()
                .scaledToFit()
                .frame(width: 250, height: 250)
                .padding(.bottom, 25.0)
            HStack (spacing: 7) {
                Circle()
                    .foregroundColor(Color(UIColor(named: "HijauCirc")!))
                    .frame(width: 13, height: 13)
                Circle()
                    .foregroundColor(Color(UIColor(named: "HijauCirc")!))
                    .frame(width: 13, height: 13)
                Circle()
                    .foregroundColor(Color(UIColor(named: "HijauCirc")!))
                    .frame(width: 13, height: 13)
                Circle()
                    .foregroundColor(Color(UIColor(named: "HijauCirc")!))
                    .frame(width: 13, height: 13)
            }
            .padding(.leading, -171.0)
            VStack (alignment: .leading, spacing: 15){
                Text(result.judul)
                    .font(.custom("hotpizza", size: 43)).foregroundColor(Color(UIColor(named: "DarkGrey")!))
                    .multilineTextAlignment(.leading)

                VStack(alignment: .leading) {
                    HStack {
                        Text("Asal")
                            .font(.system(size: 14))
                            .fontWeight(.semibold)
                            .foregroundColor(.gray).padding(.trailing, 70.0)
                        Text(result.asal)
                            .font(.system(size: 14))
                            .fontWeight(.bold)
                            .foregroundColor(Color(UIColor(named: "HijauTua")!))
                    }
                    .padding(.bottom, 1.0)

                    HStack(alignment: .top) {
                        Text("Bahan Utama")
                            .font(.system(size: 14))
                            .fontWeight(.semibold)
                            .foregroundColor(.gray).padding(.trailing, 9.0)
                        Text(result.bahan)
                            .font(.system(size: 14))
                            .padding(.trailing)
                            .lineSpacing(4)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.leading)

                            .foregroundColor(Color(UIColor(named: "HijauTua")!))
                            .multilineTextAlignment(.leading)
                            .lineLimit(4)
                    }
                    .padding(.bottom, 16.0)

                }
                .padding(.leading, 2.0)
                Text(result.deskripsi)
                    .minimumScaleFactor(0.1)
                    .padding(.trailing)
                    .lineSpacing(8)
                    .font(.custom("SFP Regular", size: 16)).foregroundColor(Color(UIColor(named: "HijauTua")!))

//                Text("Kembali")
//                    .font(.custom("SFP Bold", size: 18)).foregroundColor(.white)
//                    .frame(width: 215, height: 44, alignment: .center)
//                 .background(Color(UIColor(named: "HijauTua")!))
//                 .clipShape(RoundedRectangle(cornerRadius: 22 ))
//                 .position(x: 194, y: 78)

            }
            .padding(.leading, 22.0)
        }
        .onAppear{
            print(result.judul)
        }
        .padding(.top, 16.0)
    }
    
    struct Kastangel_Previews: PreviewProvider {
        static var previews: some View {
            Kastangel(result: .constant(Hasil()))
        }
    }
}
