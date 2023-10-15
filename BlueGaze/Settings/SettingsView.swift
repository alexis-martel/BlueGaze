//
//  SettingsView.swift
//  BlueGaze
//
//  Created by Alexis Andrew Martel on 2023-10-14.
//

import SwiftUI

struct SettingsView: View {
    private enum Tabs: Hashable {
        case general, advanced
    }
    var body: some View {
        TabView {
            PlayerDeviceSettingsView()
                .tabItem {
                    Label("Player", systemImage: "hifispeaker.fill")
                }
                .tag(Tabs.general)
        }
        .padding(20)
        .frame(width: 375, height: 150)
    }
}
