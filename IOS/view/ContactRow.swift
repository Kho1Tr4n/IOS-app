//
//  ContactRow.swift
//  IOS
//
//  Created by Khoi Tran Minh on 03/08/2023.
//

import SwiftUI

struct ContactRow: View {
    var person:Person
    
    var body: some View {
        HStack{
            person.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(person.name)
            
        }
    }
}

struct ContactRow_Previews: PreviewProvider {
    static var previews: some View {
        ContactRow(person: persons[0])
    }
}
