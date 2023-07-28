//
//  test.swift
//  IOS
//
//  Created by Khoi Tran Minh on 28/07/2023.
//

import Foundation
import SwiftUI

struct Person: Identifiable{
    var id = UUID()
    var name: String
    var age: Int
    var from: String
    var rank: String
    
    var imageName: String
    var image: Image{
        Image(imageName)
    }
}
