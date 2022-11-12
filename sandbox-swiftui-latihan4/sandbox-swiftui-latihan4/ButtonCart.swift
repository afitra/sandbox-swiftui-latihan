//
//  ButtonCart.swift
//  sandbox-swiftui-latihan4
//
//  Created by afitra mamor on 26/10/22.
//

import Foundation
import SwiftUI

struct ButtonCart:View{
//    @Binding var cartCount:Int
    @ObservedObject var cart : GlobalObject
    
    var body :some View{
        Button(action:  {self.cart.jumlah += 1}){
            HStack{
                Spacer()
                HStack{
                    Image(systemName: "cart")
                    Text("add to Cart")
                        .font(.callout)
                        .padding()
                }
                Spacer()
            }
        }
        .background(Color.orange)
        .foregroundColor(Color.white)
        .cornerRadius(25)
        .padding()
    }
}
