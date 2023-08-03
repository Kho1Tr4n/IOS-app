//
//  PersonList.swift
//  IOS
//
//  Created by Khoi Tran Minh on 03/08/2023.
//

import SwiftUI

struct PersonList: View {
    var body: some View {
        
        NavigationView{
            List (persons){ persons in
            NavigationLink {
                PersonalDetail(person:persons)
                
            } label: {ContactRow(person: persons)
                
            }
            .navigationTitle("Anime Characters")
                
            }
        }
            
        
    }
}

struct PersonList_Previews: PreviewProvider {
    static var previews: some View {
        PersonList()
    }
}
