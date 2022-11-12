//
//  Product.swift
//  sandbox-swiftui-latihan4
//
//  Created by afitra mamor on 26/10/22.
//

import Foundation

import SwiftUI


struct Product : View{
    let data:ProductModel
//    @Binding var cartCount:Int
    @ObservedObject var cart : GlobalObject
    var body : some View{
        VStack(alignment: .leading){
            ZStack(alignment:.topTrailing){
                Image(self.data.photoProduct)
                    .resizable() 
                    .aspectRatio(contentMode: ContentMode.fill)
                    .frame(height: 200)
                    .clipped()
                Button(action:{print("button ok")}){
                    Image(systemName: "heart")
                        .padding()
//                        .foregroundColor(Color.black)
//                        .background(Color.white)
                        .accentColor(Color.orange)
                }
            }
            Text(self.data.productName)
                .font(.title)
                .bold()
                .padding(.leading)
                .padding(.trailing)
            Text("Rp.\(self.data.productPrice)")
                .font(.title)
                .foregroundColor(Color.red)
                .bold()
                .padding(.leading)
                .padding(.trailing)
            HStack{
            
                Image(systemName: "mappin.circle")
                Text(self.data.lokasi)
            }
            .padding(.leading)
            .padding(.trailing)
            
            HStack{
                HStack{
                    ForEach(0..<self.data.ratingCount){
                        item in
                        Image(systemName: "star.fill")
                            .foregroundColor(Color.orange)
                            
                    }
                }
            }
            .padding(.leading)
            .padding(.trailing)
            .padding(.bottom)
            
            ButtonCart(cart: cart)
            
           
        }
        .background(Color("warna-bg"))
        .cornerRadius(15)
    }
}
