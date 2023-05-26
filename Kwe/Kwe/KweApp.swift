//
//  KweApp.swift
//  Kwe
//
//  Created by ro on 22/05/23.
//

import SwiftUI

@main
struct KweApp: App {
    var body: some Scene {
        WindowGroup {
            // ContentView( classifier: ImageClassifier())
            home_test(classifier: ImageClassifier())
        }
    }
}
