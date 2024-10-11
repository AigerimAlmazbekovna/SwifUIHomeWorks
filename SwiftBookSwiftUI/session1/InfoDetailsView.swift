//
//  InfoDetailsView.swift
//  SwiftBookSwiftUI
//
//  Created by Айгерим on 11.10.2024.
//

import Foundation
import SwiftUI

struct InfoDetailsView: View {
    
    var post: Post
    
    var body: some View {
        // wrap a post for vertical scrolling
        ScrollView {
            // full width image
            post.image
                .resizable()
                .scaledToFit()
                .padding(.top, 12)
                .shadow(radius: 10)
            
            // text decription
            VStack(alignment: .leading) {
                Text(post.subtitle)
                    .font(.title3).fontWeight(.bold)
                    .foregroundColor(.indigo)
                
                Divider()
                
                Text(post.description)
            }
            .padding()
        }
        .navigationTitle(post.title)
        .background(Color(.systemGray6))
    }
}


