//
//  InfoRowView.swift
//  SwiftBookSwiftUI
//
//  Created by Айгерим on 11.10.2024.
//

import Foundation
import SwiftUI

struct InfoRowView: View {
    var post: Post
    
    var body: some View {
        HStack {
            // place an image to circle shape
            post.image
                .resizable()
                .scaledToFill()
                .clipShape(Circle())
                .frame(width: 60, height: 60)
                .padding(.leading, 12)
            
            Text(post.title)

            Spacer()
        }
    }
}

