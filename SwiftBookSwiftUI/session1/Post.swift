//
//  Post.swift
//  SwiftBookSwiftUI
//
//  Created by Айгерим on 11.10.2024.
//

import Foundation
import SwiftUI
import MapKit

struct Post: Identifiable {
    let id: Int
    let title: String
    let subtitle: String
    let description: String
    let image: Image
    
    
    static let data = [
        Post(id: 1, title: NSLocalizedString("turkey title", comment: " "), subtitle: NSLocalizedString("turkey subtitle", comment: ""), description: NSLocalizedString("turkey description", comment: ""), image: Image("turkey")),
        Post(id: 2, title: NSLocalizedString("greece title", comment: ""), subtitle: NSLocalizedString("greece subtitle", comment: ""), description: NSLocalizedString("greece_description", comment: ""), image: Image("greek")),
        Post(id: 3, title: NSLocalizedString("maldives title", comment: ""),subtitle: NSLocalizedString("maldives subtitle", comment: ""), description: NSLocalizedString("maldives description", comment: ""), image: Image("maldives")),
        Post(id: 4, title: NSLocalizedString("georgia title", comment: ""),subtitle: NSLocalizedString("georgia subtitle", comment: ""), description: NSLocalizedString("georgia description", comment: ""), image: Image("georgia")),
        Post(id: 5, title: NSLocalizedString("egypt title", comment: ""),subtitle: NSLocalizedString("egypt subtitle", comment: " "), description: NSLocalizedString("egypt description", comment: ""), image: Image("egypt")),
        Post(id: 6, title: NSLocalizedString("italy title", comment: ""),subtitle: NSLocalizedString("italy subtitle", comment: ""), description: "italy description", image: Image("italy"))
            
  ]
}
