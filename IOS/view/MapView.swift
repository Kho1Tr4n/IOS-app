//
//  MapView.swift
//  IOS
//
//  Created by Khoi Tran Minh on 04/08/2023.
//

import SwiftUI
import MapKit

struct MapView: View {
    var rapper: Person
    
    @State private var region = MKCoordinateRegion()
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: [rapper])
        {rapper in
            MapMarker(coordinate: rapper.locationCoordinate, tint: Color.red)}
        .onAppear {
            setRegion(rapper.locationCoordinate)
            }
    
    }
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.004, longitudeDelta: 0.004)
        )
        
    }
    
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(rapper: rapper[2])
    }
}
