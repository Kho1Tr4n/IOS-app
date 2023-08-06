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
