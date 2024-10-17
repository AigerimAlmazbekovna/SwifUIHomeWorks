//
//  CustomText.swift
//  SwiftBookSwiftUI
//
//  Created by Айгерим on 17.10.2024.
//

import SwiftUI

struct CustomText: View {
    var text: String
    var body: some View {
        Text("\(text)")
            .font(Font.custom("arial", size: 50.0))
            .bold()
    }
}

