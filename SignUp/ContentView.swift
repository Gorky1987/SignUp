//
//  ContentView.swift
//  SignUp
//
//  Created by Trainee on 09.01.23.
//

import SwiftUI

struct ContentView: View {
    @State private var email: String = ""
    var body: some View {
        
        VStack{
            ZStack {
                Color("BgColor").edgesIgnoringSafeArea(.all)
                
                VStack {
                    Spacer()
                    Text("Sign In")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    padding(.bottom, 30  )
                    SocialLoginButton(image: Image("Apple"), text: Text("Sign in with Apple") )
                    
                    SocialLoginButton(image: Image("Google"), text: Text("Sign in with Google").foregroundColor(Color("PrimaryColor")))
                        .padding(.vertical)
                    
                    
                    Text("or get a linkl emailed to you")
                        .foregroundColor(Color.black.opacity(0.4))
                    
                    TextField("Your email address", text: $email)
                        .font(.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(50)
                        .shadow(color: Color.black.opacity(0.08), radius: 60,x:0.0, y: 16)
                        .padding(.vertical)
                    
                    PrimaryButton(title: "Email me a signup link")
                    
                }
                Spacer()
                Divider()
            
                Text("You are completely safe.")
                Text("Read our Terms & Conditions.")
                    .foregroundColor(Color("PrimaryColor"))
               
                
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct PrimaryButton: View {
    var title: String
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .padding()
            .cornerRadius(50)
    }
}

 

struct SocialLoginButton: View {
    var image: Image
    var text : Text
    var body: some View {
        HStack{
            image
                .resizable()
                .frame(width: 25, height: 25)
                .padding(.horizontal)
            Spacer()
            
            text
                .font(.title2)
            Spacer()
            
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(50)
        .shadow(color: Color.black.opacity(0.08), radius: 60,x:0.0, y: 16)
      
    }
}
