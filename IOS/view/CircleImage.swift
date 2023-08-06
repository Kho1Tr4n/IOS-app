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


struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
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
        CircleImage(image: Image("logo"))
    }
}
