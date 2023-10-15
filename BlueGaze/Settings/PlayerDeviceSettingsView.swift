//
//  PlayerDeviceSettingsView.swift
//  BlueGaze
//
//  Created by Alexis Andrew Martel on 2023-10-14.
//

import SwiftUI

struct PlayerDeviceSettingsView: View {
    @AppStorage("showPreview") private var showPreview = true
    @AppStorage("fontSize") private var fontSize = 12.0


    var body: some View {
        Form {
            Image(systemName: "gear")
            Text("Settings")
        }
        .padding(20)
        .frame(width: 350, height: 100)
    }
}
