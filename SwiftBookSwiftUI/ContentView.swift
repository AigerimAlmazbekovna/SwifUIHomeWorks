//
//  ContentView.swift
//  SwiftBookSwiftUI
//
//  Created by Айгерим on 10.10.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedView = 1
    @AppStorage("titleOn") private var titleOn: Bool = false
    var body: some View {
        TabView (selection: $selectedView ) {
            InfoView(titleOn: titleOn)
                .tabItem {
                    Image(systemName: "1.circle")
                    Text("InfoView")
                } .tag(1)
                .transition(.slide)
            
            HelloView()
                .tabItem {
                    Image(systemName: "2.circle")
                    Text("Hello")
                } .tag(2)
            SettingsView( titleOn: $titleOn)
                .tabItem {
                    Image(systemName: "3.circle")
                    Text("Settings")
                } .tag(1)        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
