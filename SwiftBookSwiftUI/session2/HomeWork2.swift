//
//  HomeWork2.swift
//  SwiftBookSwiftUI
//
//  Created by Айгерим on 17.10.2024.
//

import SwiftUI

struct HomeWork2: View {
    @State var counter: Int = 0
    @State var isSettngsPresent = false
    var body: some View {
        VStack {
            CustomText(text: "\(counter)")
            HStack {
                CustomButton(buttonText: "-") {
                    counter -= 1
                }
                CustomButton(buttonText: "+") {
                    counter += 1
                }
            }
            CustomButton(buttonText: "Settings") {
                isSettngsPresent.toggle()
            }.sheet(isPresented: $isSettngsPresent) {
                Settings2(counter: $counter)
            }
        }
    }
}

struct HomeWork2_Previews: PreviewProvider {
    static var previews: some View {
        HomeWork2()
    }
}
