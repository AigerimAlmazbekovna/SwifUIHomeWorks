//
//  ContentView.swift
//  SwiftBookSwiftUI
//
//  Created by Айгерим on 10.10.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedView = 1
    var body: some View {
        TabView (selection: $selectedView ) {
            InfoView()
                .tabItem {
                    Image(systemName: "1.circle")
                    Text("InfoView")
                } .tag(1)
            
            HelloView()
                .tabItem {
                    Image(systemName: "2.circle")
                    Text("Hello")
                } .tag(2)
            SettingsView()
                .tabItem {
                    Image(systemName: "3.circle")
                    Text("First")
                } .tag(1)        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
