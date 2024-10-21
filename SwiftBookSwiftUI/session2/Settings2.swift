//
//  Settings2.swift
//  SwiftBookSwiftUI
//
//  Created by Айгерим on 17.10.2024.
//

import SwiftUI

struct Settings2: View {
    @Binding var counter: Int
    var body: some View {
        VStack{
            CustomText(text: "Counter is\(counter)")
            CustomButton(buttonText: "Restart") {
                counter = 0
            }
        }
    }
}


