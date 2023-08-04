//
//  PersonalDetail.swift
//  IOS
//
//  Created by Khoi Tran Minh on 03/08/2023.
//

import SwiftUI
import CoreLocation
import MapKit

struct PersonalDetail: View {
    var person: Person
    
    var body: some View {
        ZStack{
            Color(".white")
                .edgesIgnoringSafeArea(.all)
            
            ScrollView{
                
                VStack(){
                    MapView(coordinate: person.locationCoordinate)
                        .edgesIgnoringSafeArea(.top)
                        .frame(height: 250)
                    CircleImage(image: person.image)
                        .offset(y: -100)
                        .padding(.bottom, -100)
                    Text(person.nickname)
                        .font(.system(size: 40))
                        .bold()
                    .foregroundColor(.black)
                    VStack(alignment: .leading){
                        Text("Name: " + person.name)
                            .fontWeight(.light)
                            .multilineTextAlignment(.leading)
                            .padding(.leading, -80)
                        
                        Spacer()
                        
                        Text("Date of Birth: " + person.birth)
                            .fontWeight(.light)
                            .multilineTextAlignment(.leading)
                            .padding(.leading, -80)
                        Spacer()
                        
                        Text("From: " + person.from)
                            .fontWeight(.light)
                            .multilineTextAlignment(.leading)
                            .padding(.leading, -80)
                        Spacer()
                        
                        Text("Description: " + person.description)
                            .fontWeight(.light)
                            .multilineTextAlignment(.leading)
                            .padding(.leading, -80)
                    }
                        
                
                    
                
                }
            }
            
        }
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct PersonalDetail_Previews: PreviewProvider {
    static var previews: some View {
        PersonalDetail(person:rapper[0])
    }
}
