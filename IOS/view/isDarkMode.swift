//
//  isDarkMode.swift
//  IOS
//
//  Created by Khoi Tran Minh on 06/08/2023.
//

import SwiftUI


struct isDarkMode: View {
    @AppStorage("isDarkMode") private var isDarkMode = false
    var body: some View {
        Toggle("Dark Mode", isOn: $isDarkMode).padding([.leading, .trailing], 5)
                
        
        
    }
}

struct isDarkMode_Previews: PreviewProvider {
    static var previews: some View {
        isDarkMode()
    }
}
