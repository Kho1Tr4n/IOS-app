//
//  WelcomeView.swift
//  IOS
//
//  Created by Khoi Tran Minh on 04/08/2023.
//

import SwiftUI

struct WelcomeView: View {
    @State var isWelcomeActive: Bool = true
    var body: some View {
        ZStack{
            if isWelcomeActive{
                GreetingView(showAlert: false, active: $isWelcomeActive)
            } else {
                PersonList()
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
