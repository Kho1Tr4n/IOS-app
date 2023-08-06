//
//  IOSApp.swift
//  IOS
//
//  Created by Khoi Tran Minh on 28/07/2023.
//

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
