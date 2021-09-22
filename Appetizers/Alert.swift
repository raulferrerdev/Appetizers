//
//  Alert.swift
//  Appetizers
//
//  Created by Raúl Ferrer on 22/9/21.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidData = AlertItem(title: Text("Server Error"),
                                       message: Text("The data received from the server was invalid."),
                                       dismissButton: .default(Text("Ok")))
    static let invalidResponse = AlertItem(title: Text("Server Error"),
                                           message: Text("Invalid response from de server."),
                                           dismissButton: .default(Text("Ok")))
    static let invalidUrl = AlertItem(title: Text("Server Error"),
                                      message: Text("There was an issue contacting to the server."),
                                      dismissButton: .default(Text("Ok")))
    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                            message: Text("Unable to complete your request at this time."),
                                            dismissButton: .default(Text("Ok")))
}
