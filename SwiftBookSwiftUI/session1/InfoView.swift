//
//  InfoView.swift
//  SwiftBookSwiftUI
//
//  Created by Айгерим on 11.10.2024.
//

import Foundation
import SwiftUI

import SwiftUI

struct InfoView: View {
    var titleOn: Bool
    var body: some View {
        // navigation view for master - details architecture
        NavigationView {
            // show the list of sample data
            List(Post.data) { post in
                NavigationLink {
                    // link to details view
                    InfoDetailsView(post: post)
                } label: {
                    // the view to represent one row of data with image and title
                    InfoRowView(post: post)
                }
                
            }
            .navigationTitle(titleOn ? "Путешестия" : "")
            .listStyle(.plain)
        }
    }
}


