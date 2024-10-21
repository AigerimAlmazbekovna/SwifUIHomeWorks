//
//  HelloView.swift
//  SwiftBookSwiftUI
//
//  Created by Айгерим on 11.10.2024.
//

import Foundation
import SwiftUI
import MapKit
    
struct HelloView: View {
        @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 30.8025, longitude: 20.0), span: MKCoordinateSpan(latitudeDelta: 50, longitudeDelta: 50))
        let locations: [Location] = [
            Location(name: "Турция", coordinate: CLLocationCoordinate2D(latitude: 38.9637, longitude: 35.2433)),
            Location(name: "Греция", coordinate: CLLocationCoordinate2D(latitude: 39.0742, longitude: 21.8243)),
            Location(name: "Мальдивы", coordinate: CLLocationCoordinate2D(latitude: 3.2028, longitude: 73.2207)),
            Location(name: "Грузия", coordinate: CLLocationCoordinate2D(latitude: 42.3154, longitude: 43.3569)),
            Location(name: "Египет", coordinate: CLLocationCoordinate2D(latitude: 26.8206, longitude: 30.8025)),
            Location(name: "Италия", coordinate: CLLocationCoordinate2D(latitude: 41.8719, longitude: 12.5674))
                     
        ]
        var body: some View {
            Map(coordinateRegion: $region, showsUserLocation: true, annotationItems: locations) {
                location in
                MapAnnotation(coordinate: location.coordinate) {
                    VStack {
                        Image(systemName: "pin.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.red)
                        Text(location.name)
                            .font(.caption)
                            .padding(5)
                            .cornerRadius(5)
                            .shadow(radius: 3)
                    }
                }
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
struct Location: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}
