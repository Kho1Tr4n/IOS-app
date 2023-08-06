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

enum Theme {
    static let color = Color("Color")
}

@main

struct IOSApp: App {
    @AppStorage("isDarkMode") private var isDarkMode = false
    var body: some Scene {
        WindowGroup {
            IOS.isDarkMode()
            WelcomeView()
                .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}
