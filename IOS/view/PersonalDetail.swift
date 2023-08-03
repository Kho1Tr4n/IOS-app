//
//  PersonalDetail.swift
//  IOS
//
//  Created by Khoi Tran Minh on 03/08/2023.
//

import SwiftUI

struct PersonalDetail: View {
    var person: Person
    var body: some View {
        ZStack{
            Color(".red")
                .edgesIgnoringSafeArea(.all)
            VStack{
                CircleImage(image: person.image)
                Text(person.name)
                    .font(.system(size:40))
                    .bold()
                    .foregroundColor(.white)
                
                
            }
        }
        .navigationTitle(person.name)
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct PersonalDetail_Previews: PreviewProvider {
    static var previews: some View {
        PersonalDetail()
    }
}
