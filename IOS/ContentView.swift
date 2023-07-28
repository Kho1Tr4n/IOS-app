//
//  ContentView.swift
//  IOS
//
//  Created by Khoi Tran Minh on 28/07/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("channels4_profile")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color(.white), lineWidth: 4))
                .shadow(radius: 7)
            
                
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
