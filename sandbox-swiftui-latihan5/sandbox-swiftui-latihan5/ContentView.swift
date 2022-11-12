//
//  ContentView.swift
//  sandbox-swiftui-latihan5
//
//  Created by afitra mamor on 12/11/22.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var userAuth: AuthUser
    var body: some View {
         

        if(!userAuth.isLogin){
            return AnyView(Login())
        }else{
            return AnyView(Home())
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(AuthUser())
    }
}
