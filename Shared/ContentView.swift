//
//  ContentView.swift
//  Shared
//
//  Created by Dentity on 10/1/2564 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct Home: View {
    @State var isShow = false
    
    var body: some View {
        NavigationView {
            ZStack {
                NavigationLink(
                    destination: Register(isShow: self.$isShow),
                    isActive: self.$isShow,
                    label: {
                        Text("")
                    }).hidden()
                
                Login(isShow: self.$isShow)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
