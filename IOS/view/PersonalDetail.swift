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
            
            ScrollView{
                VStack(){
                    
                    MapView(rapper:rapper[0])
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
                        
                        HStack{
                            Text("\nName: " )
                                .underline()
                                .fontWeight(.medium)
                                .multilineTextAlignment(.leading)
                                .padding(.leading, 5)
                            Text("\n" + person.name)
                                .multilineTextAlignment(.leading)
                                .padding(.leading, 5)
                        }
                        
                        
                        Spacer()
                        
                        HStack{
                            Text("Date of Birth: " )
                                .underline()
                                .fontWeight(.medium)
                                .multilineTextAlignment(.leading)
                                .padding(.leading, 5)
                            Text(person.birth)
                        }
                        Spacer()
                        
                        HStack{
                            Text("From: "  )
                                .underline()
                                .fontWeight(.medium)
                                .multilineTextAlignment(.leading)
                                .padding(.leading, 5)
                            Text(person.from)
                        }
                        
                        
                        Spacer()
                        
                        HStack{
                            Text("Other rapname: ")
                                .underline()
                                .fontWeight(.medium)
                                .multilineTextAlignment(.leading)
                                .padding(.leading, 5)
                            Text(person.otherNickName)
                                .padding(.leading, 5)
                        }
                        
                        
                       
                        Spacer()
                            Text("Description: " )
                                .underline()
                                .fontWeight(.medium)
                                .multilineTextAlignment(.leading)
                                .padding(.leading, 5)
                            Text(person.description)
                            .padding(.leading, 5)
                        
                        
                    }
                        
                
                    
                
                }
            }
            
        }
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct PersonalDetail_Previews: PreviewProvider {
    static var previews: some View {
        PersonalDetail(person:rapper[3])
    }
}
