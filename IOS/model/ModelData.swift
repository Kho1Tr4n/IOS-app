//
//  ModelData.swift
//  IOS
//
//  Created by Khoi Tran Minh on 03/08/2023.
//

import Foundation
import CoreLocation

var rapper = decodeJsonFromJsonFile(jsonFileName: "rappers")


func decodeJsonFromJsonFile(jsonFileName: String) -> [Person] {
    if let file = Bundle.main.url(forResource: jsonFileName, withExtension: "json"){
        if let data = try? Data(contentsOf: file) {
            do {
                let decoder = JSONDecoder()
                let decoded = try decoder.decode([Person].self, from: data)
                return decoded
            } catch let error {
                fatalError("Failed to decode JSON: \(error)")
            }
        }
    } else {
        fatalError("Couldn't load \(jsonFileName) file")
    }
    return [ ] as [Person]
}
