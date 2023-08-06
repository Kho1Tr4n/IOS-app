/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2023B
  Assessment: Assignment 1
  Author: Tran Minh Khoi
  ID: s3916827
  Created  date: 28/07/2023
  Last modified: 06/08/2023
  Acknowledgement: Apple Development Web, Canvas
*/


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
