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
