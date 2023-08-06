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
                    List (rapper){ persons in
                        NavigationLink {
                            PersonalDetail(person:persons)
                            
                        } label: {PersonRow(person: persons)
                            
                        }
                        .navigationTitle("Rapper")
                    }
                
                
            }
        
    }
}

struct PersonList_Previews: PreviewProvider {
    static var previews: some View {
        PersonList()
    }
}
