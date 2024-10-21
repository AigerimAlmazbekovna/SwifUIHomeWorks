//
//  LinkToAppView.swift
//  SwiftBookSwiftUI
//
//  Created by Айгерим on 14.10.2024.
//

import Foundation
import SwiftUI

struct LinkToAppView: View {
    
    var toggled: Bool
    
    private var app: AppInStore {
        let index = toggled ? 0 : 1
        return AppInStore.data[index]
    }
    
    var body: some View {
        // link to the AppStore
        Link(destination: app.url) {
            HStack {
                Image(app.imageName)
                    .resizable()
                 
                
                Text(app.title)
                
                Spacer()
            }
        }
    }
}
