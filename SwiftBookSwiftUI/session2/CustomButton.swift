//
//  CustomButton.swift
//  SwiftBookSwiftUI
//
//  Created by Айгерим on 17.10.2024.
//

import SwiftUI

struct CustomButton: View {
    var buttonText: String
    var compleation: () -> ()
    var body: some View {
        Button {
            compleation()
        } label: {
          Text("\(buttonText)")
                .foregroundColor(.white)
                .bold()
        }
        .padding()
        .background(Color.orange)
        .cornerRadius(10.0)
        }
    }


