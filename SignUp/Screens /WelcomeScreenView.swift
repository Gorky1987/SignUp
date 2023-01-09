//
//  WelcomeScreenView.swift
//  SignUp
//
//  Created by Trainee on 09.01.23.
//

import SwiftUI

struct WelcomeScreenView: View {
    var body: some View {
        ZStack {
            Color("BgColor").edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                Image("SignUP")
                    .resizable()
                    .frame(width: 320, height: 280)
                Spacer()
                PrimaryButton(title: "Get Started")
                
                Text("Sign In")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color("PrimaryColor"))
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(50)
                    .shadow(color: Color.black.opacity(0.08), radius: 60,x:0.0, y: 16)
                    .padding(.vertical)
                
                HStack{
                    Text("New around here? ")
                    Text("Sign in")
                        .foregroundColor(Color("PrimaryColor"))
                }
            }
            .padding()
        }
    }
}


struct WelcomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreenView()
    }
}
