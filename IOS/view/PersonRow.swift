//
//  ContactRow.swift
//  IOS
//
//  Created by Khoi Tran Minh on 03/08/2023.
//

import SwiftUI

struct PersonRow: View {
    var person:Person
    
    var body: some View {
        HStack{
            person.image
                .resizable()
                .frame(width: 50, height: 50)
                
            Text(person.nickname + "\nBirthday: " + person.birth + "\nFrom: " + person.from)
                .font(.body)
                .fontWeight(.semibold)
            Text("\n")
                
            
        }
        
    }
}

struct ContactRow_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            PersonRow(person: rapper[0])
                .previewLayout(.fixed(width: 300, height: 70))
            PersonRow(person: rapper[1])
                .previewLayout(.fixed(width: 300, height: 70))
        }
    }
}
