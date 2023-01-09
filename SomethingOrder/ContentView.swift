//
//  ContentView.swift
//  SomethingOrder
//
//  Created by Игорь Стурейко on 09.01.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        VStack(spacing: 40) {
            Spacer()
            Text("Autorization")
                .padding()
                .padding(.horizontal, 30)
                .font(.title.bold())
                .background(Color("blueAlpha"))
                .cornerRadius(30)
            
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
                
                HStack {
                    Button {
                        print("Login")
                    } label: {
                        Text("Login")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color("blueAlpha"))
                            .font(.title3.bold())
                            .foregroundColor(.white)
                            .cornerRadius(20)
                            .padding(8)
                            .padding(.horizontal, 12)
                    }
                    
                    Button {
                        print("Register")
                    } label: {
                        Text("Register")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color("blueAlpha"))
                            .font(.title3.bold())
                            .foregroundColor(.white)
                            .cornerRadius(20)
                            .padding(8)
                            .padding(.horizontal, 12)
                    }
                }

            }
            .padding()
            .background(Color("greyAlpha"))
            .cornerRadius(20)
            .padding()
            Spacer()
            Spacer()
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("bg").ignoresSafeArea())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
