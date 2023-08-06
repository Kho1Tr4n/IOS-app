/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2023B
  Assessment: Assignment 1
  Author: Tran Minh Khoi
  ID: s3916827
  Created  date: 28/07/2023
  Last modified: 06/08/2023
  Acknowledgement: Apple Development Web, Canvas
*/


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
        print(coordinate)
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
