//
//  Home.swift
//  sandbox-swiftui-latihan5
//
//  Created by afitra mamor on 12/11/22.
//

import Foundation
import SwiftUI

struct Home : View{
    @EnvironmentObject var userAuth: AuthUser
    
    var body : some View{
        NavigationView{
            ZStack{
                Color.purple
                Text("Home")
                    .foregroundColor(.white)
                    .navigationBarTitle("Home", displayMode:.inline)
                    .navigationBarItems( trailing:
                                            Button(action:{self.userAuth.isLogin=false}){
                            Image(systemName: "arrowshape.turn.up.right.circle")
                    }
                    )
            }
        }
    }
}
