//
//  PlayerDeviceUtilitiesView.swift
//  BlueGaze
//
//  Created by Alexis Andrew Martel on 2023-10-14.
//

import SwiftUI
struct PlayerDeviceUtilitiesView: View {
    @State private var isShowingConfirmationDialog = false
    @State private var deviceIP: String = ""
    var body: some View {
        VStack {
            Image(systemName: "restart.circle")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Reboot your player")
            TextField("Player IP Address", text: $deviceIP)
                .frame(width: 200.0)
            Button("Reboot…") {
                isShowingConfirmationDialog = true
            }
            .confirmationDialog(
                "Are you sure you want to reboot your player now?",
                isPresented: $isShowingConfirmationDialog
            ) {
                Button("Reboot", role: .destructive) {
                    print("Rebooting player…")
                    PlayerDeviceUtilities().rebootDevice(IPAddress: deviceIP)
                }
            }
        }
    }
}
