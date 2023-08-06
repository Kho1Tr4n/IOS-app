//
//  test.swift
//  IOS
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
