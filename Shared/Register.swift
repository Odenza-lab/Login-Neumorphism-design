//
//  Register.swift
//  odz4-Login-Neumorphism
//
//  Created by Dentity on 10/1/2564 BE.
//

import SwiftUI

struct Register: View {
    @State var username = ""
    @State var password = ""
    @State var confirmPassword = ""
    @Binding var isShow: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            
            Rectangle()
                .fill(Color("bgColor"))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
            
            register
            
            Button(action: {
                self.isShow.toggle()
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.gray)
            }).padding()
            
        }
        .navigationBarHidden(true)
        
    }
    
    
    var register: some View {
        ZStack {
            
            VStack {
                Spacer()
                Text("REGISTER")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                Text("Create your new account")
                    .foregroundColor(.gray)
                
                TextField("EMAIL", text: $username)
                    .padding()
                    .cornerRadius(5)
                    .modifier(InnerShadowViewModifier())
                    .padding(.bottom, 20)
                
                SecureField("PASSWORD", text: $password)
                    .padding()
                    .cornerRadius(5)
                    .modifier(InnerShadowViewModifier())
                    .padding(.bottom, 10)
                
                SecureField("CONFIRM PASSWORD", text: $confirmPassword)
                    .padding()
                    .cornerRadius(5)
                    .modifier(InnerShadowViewModifier())
                    .padding(.bottom, 10)
                
              
                HStack {
                    Button(action: {}, label: {
                        Spacer()
                        
                        Text("CREATE")
                            .fontWeight(.bold)
                        
                        Spacer()
                    })
                    .foregroundColor(Color.black.opacity(0.8))
                    .padding()
                    .background(Color("bgColor"))
                    .cornerRadius(10)
                    .modifier(ShadowViewModifier())
                }.padding(.bottom, 16)
           
                
                Spacer()
            }.padding(30)
        }
    }
}

//struct Register_Previews: PreviewProvider {
//    static var previews: some View {
//        Register()
//    }
//}
