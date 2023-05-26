//
//  home test.swift
//  Kwe
//
//  Created by ro on 23/05/23.
//

import SwiftUI

struct home_test: View {
    @State var isPresenting: Bool = false
    @State var uiImage: UIImage?
    @State var sourceType: UIImagePickerController.SourceType = .photoLibrary
    
    @State private var classifierResult: String = ""
    @State private var navigateToResult: Bool = false
    
    @ObservedObject var classifier: ImageClassifier
    @State var result : Hasil = Hasil()
    var body: some View {
        NavigationStack {
            ZStack {
                Image("Background")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                VStack(alignment: .leading, spacing: 20) {
                    HStack(spacing: 0) {
                        Text("kwe")
                            .font(.custom("hotpizza", size: 25)).foregroundColor(Color(UIColor(named: "HijauLogo")!))
                        
                        Text(".")
                            .font(.custom("hotpizza", size: 25)).foregroundColor(Color(UIColor(named: "HijauTua")!))
                        
                    }
                    VStack(alignment: .leading) {
                        Text("Kue, kue apa")
                            .font(.system(size: 36))
                            .fontWeight(.bold)
                            .foregroundColor(Color(UIColor(named: "HijauTua")!))
                        //                    .fontWeight(.bold)
                        Text("yang...?")
                            .font(.system(size: 36))
                            .fontWeight(.bold)
                            .foregroundColor(Color(UIColor(named: "HijauTua")!))
                        //                    .fontWeight(.bold)
                    }
                    VStack(alignment: .leading) {
                        Text("Kue apa yang pernah kamu coba")
                            .font(.system(size: 18))
                            .fontWeight(.regular)
                        Text("tapi gatau namanya? Yuk cari tau!")
                            .font(.system(size: 18))
                            .fontWeight(.regular)
                    }
                    
                }
                .position(x: 160, y: 179)
                VStack {
                    Text("Buka Camera")
                        .font(.custom("SFP Bold", size: 18)).foregroundColor(.white)
                        .frame(width: 215, height: 44, alignment: .center)
                        .background(Color(UIColor(named: "HijauTua")!))
                        .clipShape(RoundedRectangle(cornerRadius: 22 ))
                        .onTapGesture {
                            isPresenting = true
                            sourceType = .camera
                        }
                    Text("Galeri")
                        .font(.custom("SFP Bold", size: 18)).foregroundColor(.white)
                        .frame(width: 215, height: 44, alignment: .center)
                        .background(Color(UIColor(named: "HijauTua")!))
                        .clipShape(RoundedRectangle(cornerRadius: 22 ))
                        .onTapGesture {
                            isPresenting = true
                            sourceType = .photoLibrary
                        }
                }
                .onChange(of: uiImage) { newImage in
                    DispatchQueue.main.async {
                        classifier.detect(uiImage: uiImage!)
                        classifierResult = classifier.imageClass!
                        result = result.handleResult(hasilModel: classifierResult)
                        
                    }
                    navigateToResult.toggle()
                }
                .position(x: 195, y: 750)
                
                VStack {
                    if !classifierResult.isEmpty {
                        NavigationLink("", value: classifierResult)
                    }
                }
                
                // Navigation link to View B
                
                NavigationLink(destination: Kastangel(result: $result), isActive: $navigateToResult) {
                    EmptyView()
                }
                
            }
            .sheet(isPresented: $isPresenting){
                ImagePicker(uiImage: $uiImage, isPresenting:  $isPresenting, sourceType: $sourceType)
                    .onDisappear{
                        if uiImage != nil {
                            classifier.detect(uiImage: uiImage!)
                        }
                    }
                
            }
        }
    }
    
    struct home_test_Previews: PreviewProvider {
        static var previews: some View {
            home_test(classifier: ImageClassifier())
        }
    }
}
