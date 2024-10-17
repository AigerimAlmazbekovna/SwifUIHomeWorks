//
//  Settings.swift
//  SwiftBookSwiftUI
//
//  Created by Айгерим on 11.10.2024.
//

import Foundation
import SwiftUI

struct SettingsView: View {
    // read actual color scheme from the environment
    @Environment(\.colorScheme) var colorScheme
    
    @State private var selectedTheme = ColorTheme.Theme.default
    
    @Binding var titleOn: Bool
   // @AppStorage("linkToAppOn") private var linkOn = false
    @State private var toggler = false
    
    var body: some View {
        Form {
            
            Section {
                // presents current light / dark mode in iOS, connected dynamically
                Text("Color theme appearance: ") +
                Text("\(colorScheme == .dark ? "dark mode" : "light mode")").bold()
                
                Picker("Color theme", selection: $selectedTheme.animation()) {
                    ForEach(ColorTheme.Theme.allCases, id: \.self) {
                        Text($0.rawValue).tag($0)
                    }
                }
                .pickerStyle(.segmented)
                
            }
            Section {
                Toggle(isOn: $titleOn) {
                    Text("Включить заголовок InfoView?")
                }
                }
                
                }
            }
        }



