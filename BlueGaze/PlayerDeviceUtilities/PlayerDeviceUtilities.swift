//
//  DeviceUtilities.swift
//  BlueGaze
//
//  Created by Alexis Andrew Martel on 2023-10-12.
//

import Foundation

struct PlayerDeviceUtilities {
    func rebootDevice(IPAddress: String) {
        let requestURL = "http://\(IPAddress)/reboot"
        let parameters = "yes=1".data(using: .utf8)

        if let url = URL(string: requestURL) {
            var request = URLRequest(url: url)
            request.httpMethod = "POST"
            request.httpBody = parameters

            let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
                if let response = response as? HTTPURLResponse {
                    print("Got HTTP response code \(response.statusCode) \(HTTPURLResponse.localizedString(forStatusCode: response.statusCode))")
                }
                if data != nil {
                    print("Successfully rebooted player at \(IPAddress)")
                } else {
                    print("No player could be found at this address")
                }
            }
            task.resume()
        } else {
            print("Invalid player address")
        }
    }
}
