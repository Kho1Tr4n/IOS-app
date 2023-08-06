//
//  test.swift
//  IOS
//
//  Created by Khoi Tran Minh on 28/07/2023.
//

import Foundation
import SwiftUI
import CoreLocation

struct Person : Identifiable, Codable{
    var id : Int
    var name: String
    var nickname: String
    var otherNickName: String
    var birth: String
    var from: String
    var description: String
    
    
    var imageName: String
    var image: Image{
        Image(imageName)
    }
    
    var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
}

struct Coordinates: Codable {
    var latitude: Double
    var longitude: Double
}
