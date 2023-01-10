//
//  ContentView.swift
//  SomethingOrder
//
//  Created by Игорь Стурейко on 09.01.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isAuth = true
    
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    
    var body: some View {
        // MARK: Autorization screen
        VStack(spacing: 40) {
            Spacer()
            Text(isAuth ? "Autorisation": "Registration")
                .padding(isAuth ? 10 : 20)
                .padding(.horizontal, 30)
                .font(.title.bold())
                .background(Color("SourLemon"))
                .foregroundColor(Color("brawnAlpha"))
                .cornerRadius(isAuth ? 30 : 40)
            
            VStack {
                TextField("EMail", text: $email)
                    .padding()
                    .background(.white)
                    .cornerRadius(10)
                    .padding(8)
                    .padding(.horizontal, 12)
                
                SecureField("Password", text: $password)
                    .padding()
                    .background(.white)
                    .cornerRadius(10)
                    .padding(8)
                    .padding(.horizontal, 12)
                
                if !isAuth {
                    SecureField("Confirm password", text: $confirmPassword)
                        .padding()
                        .background(.white)
                        .cornerRadius(10)
                        .padding(8)
                        .padding(.horizontal, 12)
                }
                

                Button {
                    print("Login click")
                } label: {
                    Text(isAuth ? "Login" : "Registaration")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color("SourLemon"))
                        .font(.title3.bold())
                        .foregroundColor(Color("brawnAlpha"))
                        .cornerRadius(16)
                        .padding(8)
                        .padding(.horizontal, 12)
                }
                
                Button {
                    isAuth.toggle()
                } label: {
                    Text(isAuth ? "Registration" : "Autorisation")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .font(.title3.bold())
                        .foregroundColor(Color("brawnAlpha"))
                        .cornerRadius(16)
                        .padding(8)
                        .padding(.horizontal, 12)
                }
            }
            .padding()
            .padding(.top, 10)
            .background(Color("greyAlpha"))
            .cornerRadius(20)
            .padding(isAuth ? 30 : 10)
            Spacer()
            Spacer()
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("bg")
            .ignoresSafeArea()
            .blur(radius: isAuth ? 0 : 10))
        .animation(Animation.easeInOut(duration: 0.8), value: isAuth)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
