//
//  ColourApp.swift
//  Colour
//
//  Created by Jack Finnis on 16/09/2022.
//

import SwiftUI

@main
struct ColourApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .windowStyle(.hiddenTitleBar)
        .windowResizability(.contentSize)
    }
}

struct ContentView: View {
    @State var color = Color.black
    
    var body: some View {
        ZStack {
            ColorPicker(selection: $color) {}
                .scaleEffect(10)
            color
                .allowsHitTesting(false)
        }
        .ignoresSafeArea()
        .frame(width: 120, height: 90)
    }
}
