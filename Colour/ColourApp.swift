//
//  ColourApp.swift
//  Colour
//
//  Created by Jack Finnis on 16/09/2022.
//

import SwiftUI

@main
struct ColourApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    NSWindow.allowsAutomaticWindowTabbing = false
                }
        }
        .windowStyle(.hiddenTitleBar)
        .windowResizability(.contentSize)
        .commandsRemoved()
    }
}

class AppDelegate: NSObject, NSApplicationDelegate {
    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        true
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
