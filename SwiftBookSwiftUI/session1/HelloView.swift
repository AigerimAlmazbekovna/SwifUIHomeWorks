//
//  HelloView.swift
//  SwiftBookSwiftUI
//
//  Created by Айгерим on 11.10.2024.
//

import Foundation
import SwiftUI

struct HelloView: View {
    @AppStorage("entries") private var savedEntries: String = ""
    @State private var newEntry: String = ""
    @State private var entries:[String] = []
    
    var body: some View {
        VStack {
            TextField("Введите новую запись", text: $newEntry)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Button(action: {
                addEntry()
            }) {
                Text("Добавить запись")
                    .font(.headline)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding()
            
            
            List(entries, id: \.self) { entry in
                Text(entry)
            }
        }
        .padding()
        .onAppear() {
            loadEntries()
        }
    }
    private func addEntry() {
        if !newEntry.isEmpty {
            withAnimation {
                entries.append(newEntry)
            }
            saveEntries()
            newEntry = ""
        }
    }
    private func saveEntries() {
        if let data = try? JSONEncoder().encode(entries) {
            savedEntries = String(data: data, encoding: .utf8) ?? ""
        }
    }
    private func loadEntries() {
        if let data = savedEntries.data(using: .utf8),
           let decodedEntries = try? JSONDecoder().decode([String].self, from: data) {
            entries = decodedEntries
        }
        
    }
}
