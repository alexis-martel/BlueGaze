//
//  BlueGazeApp.swift
//  BlueGaze
//
//  Created by Alexis Andrew Martel on 2023-09-28.
//

import SwiftUI

@main
struct BlueGazeApp: App {
    var body: some Scene {
        WindowGroup {
            
            ContentView()
        }
        Window("Remote Control", id: "remote") {
            
        }
        Settings {
            SettingsView()
        }
    }
}
