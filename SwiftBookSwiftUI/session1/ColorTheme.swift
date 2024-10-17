//
//  ColorTheme.swift
//  SwiftBookSwiftUI
//
//  Created by Айгерим on 14.10.2024.
//

import SwiftUI

class ColorTheme: ObservableObject {
    
    enum Theme: String, CaseIterable {
        case `default`, light, dark
    }
    
    @Published var current = Theme.default
    
   
}
