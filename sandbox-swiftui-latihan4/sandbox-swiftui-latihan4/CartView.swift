//
//  CartView.swift
//  sandbox-swiftui-latihan4
//
//  Created by afitra mamor on 26/10/22.
//

import Foundation
import SwiftUI

struct CartView:View{
//    @Binding var cartCount:Int
    @ObservedObject var cart : GlobalObject
    var body:some View{
        ZStack{
  
                Image(systemName: "cart.fill")
       
            Text("\(self.cart.jumlah)")
                .foregroundColor(Color.white)
                .frame(width: 10,height: 10)
                .font(.body)
                .padding(5)
                .background( Color.red)
                .clipShape(Circle())
                .offset(x:10,y:-10)
        }
    }
}
