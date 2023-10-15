//
//  ContentView.swift
//  BlueGaze
//
//  Created by Alexis Andrew Martel on 2023-09-28.
//

import SwiftUI

struct ContentView: View {
    //    @State private var path = []
    var body: some View {
        NavigationSplitView() {
            List {
                Section("Music Services") {
                    NavigationLink("TIDAL"){
                        Text("TIDAL")
                    }
                }
                Section("Player") {
                    NavigationLink("Utilities") {
                        PlayerDeviceUtilitiesView()
                    }
                }
            }
        } detail: {
            Text("Welcome to BlueGaze")
        }
    }
}

#Preview {
    ContentView()
}
