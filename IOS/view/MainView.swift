//
//  MainView.swift
//  IOS
//
//  Created by Khoi Tran Minh on 28/07/2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack {
            Color(red: 0.90, green: 0.00 , blue: 0.2)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .frame(width:300, height:200)
                    .overlay(Circle().stroke(Color(.white), lineWidth: 4))
                    .shadow(radius: 7)
                
                Text("Anime bring happiness more than you ex ")
                    .fontWeight(.bold)
                    .font(.system(size:30))
                    .multilineTextAlignment(.center)
                
                
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
