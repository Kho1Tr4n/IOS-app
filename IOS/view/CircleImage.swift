//
//  View.swift
//  IOS
//
//  Created by Khoi Tran Minh on 28/07/2023.
//

import SwiftUI


struct CircleImage: View {
    var body: some View {
        Image("channels4_profile")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .frame(width:300, height:200)
            .overlay(Circle().stroke(Color(.white), lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
