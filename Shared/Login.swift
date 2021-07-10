//
//  Login.swift
//  odz4-Login-Neumorphism
//
//  Created by Dentity on 10/1/2564 BE.
//

import SwiftUI

struct Login: View {
    @State var username = ""
    @State var password = ""
    @Binding var isShow: Bool
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("bgColor"))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                Text("WELCOME")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                Text("Log in to your existant account")
                    .foregroundColor(.gray)
                
                TextField("USERNAME", text: $username)
                    .padding()
                    .cornerRadius(5)
                    .modifier(InnerShadowViewModifier())
                    .padding(.bottom, 20)
                
                SecureField("PASSWORD", text: $password)
                    .padding()
                    .cornerRadius(5)
                    .modifier(InnerShadowViewModifier())
                    .padding(.bottom, 10)
                
                
                HStack {
                    Spacer()
                    Text("Foget password?")
                        .foregroundColor(.gray)
                }.padding(.bottom, 20)
                
                HStack {
                    Button(action: {}, label: {
                        Spacer()
                        
                        Text("LOGIN")
                            .fontWeight(.bold)
                        
                        Spacer()
                    })
                    .foregroundColor(Color.black.opacity(0.8))
                    .padding()
                    .background(Color("bgColor"))
                    .cornerRadius(10)
                    .modifier(ShadowViewModifier())
                }.padding(.bottom, 16)
                
                HStack {
                    Text("Already have an acount?")
                        .foregroundColor(.gray)
                    Text("Sign up")
                        .foregroundColor(.blue)
                        .onTapGesture {
                            self.isShow.toggle()
                        }
                }
                
                Spacer()
            }.padding(30)
        }
    }
}

struct InnerShadowViewModifier: ViewModifier {
    @State var radius: CGFloat = 10
    
    func body(content: Content) -> some View {
        content
            .overlay(
                RoundedRectangle(cornerRadius: radius)
                    .stroke(Color("bgColor"), lineWidth: 4)
                    .shadow(color: Color("darkShadow"), radius: 4, x: 5, y: 5)
                    .clipShape(RoundedRectangle(cornerRadius: radius))
                    .shadow(color: Color("lightShadow"), radius: 4, x: -5, y: -5)
                    .clipShape(RoundedRectangle(cornerRadius: radius))
                
                
            )
            
            
    }
}

struct ShadowViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .shadow(color: Color("lightShadow"), radius: 8, x: -8, y: -8)
            .shadow(color: Color("darkShadow"), radius: 8, x: 8, y: 8)
    }
}

//struct Login_Previews: PreviewProvider {
//    static var previews: some View {
//        Login()
//    }
//}
