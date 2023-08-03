//
//  InfoView.swift
//  IOS
//
//  Created by Khoi Tran Minh on 03/08/2023.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
    RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50.0)
            .overlay(HStack{
                Image(systemName: "phone.fill")
                    .foregroundColor(Color.red)
                Text("12345678")
                    .foregroundColor(.black)
            })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
