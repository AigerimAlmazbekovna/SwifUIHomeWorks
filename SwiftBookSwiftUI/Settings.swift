//
//  Settings.swift
//  SwiftBookSwiftUI
//
//  Created by Айгерим on 11.10.2024.
//

import Foundation
import SwiftUI
struct SettingsView: View {
    @State private var colors = ["Red", "Blue", "Green", "Yellow", "Black"]
    @State private var selectedColor = 1
    @State private var additionalSettings = false
    var body: some View {
        NavigationView {
            Form {
                Picker(selection: $selectedColor, label:
                        Text("Select Color")) {
                    ForEach(0..<colors.count) {
                        Text(self.colors[$0])
                    }
                }
                Toggle(isOn: $additionalSettings) {
                    Text("Additional settings")
                }
            } .navigationTitle("Settings")
        }
    }
   
}
