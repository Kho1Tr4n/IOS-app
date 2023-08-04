//
//  MainView.swift
//  IOS
//
//  Created by Khoi Tran Minh on 28/07/2023.
//

import SwiftUI


struct GreetingView: View {
    @State var showAlert:Bool
    @Binding var active:Bool
    var body: some View {
        ZStack {
            Color(.white)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Spacer()
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .frame(width:300, height:200)
                    .overlay(Circle().stroke(Color(.white), lineWidth: 4))
                    .shadow(radius: 7)
                
                Text("Rap Viet will be shined to all around the world")
                    .fontWeight(.bold)
                    .font(.system(size:30))
                    .multilineTextAlignment(.center)

                    Spacer()
                Button(action: {
                    active = false
                }, label: {
                    Capsule()
                      .fill(Color.black.opacity(0.2))
                      .padding(8)
                      .frame(height:80)
                      .overlay(Text("Get Started")
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.white))
                })
                Image(systemName: "info.circle.fill")
                    .onTapGesture {
                        showAlert = true
                    }
                    .offset(x:170)
                    .alert(isPresented:$showAlert){
                        return Alert(
                            title: Text("Author"),
                              message: Text("Name: Tran Minh Khoi \n " +
                                              "SID: s3916827 \n" + "Program: BP162")
                          )
                        
                    }
            }
          
        }
    }
}

struct GreetingView_Previews: PreviewProvider {
    static var previews: some View {
        GreetingView(showAlert: false , active: .constant(true))
    }
}
