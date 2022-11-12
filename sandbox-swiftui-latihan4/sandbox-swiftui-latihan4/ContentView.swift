//
//  ContentView.swift
//  sandbox-swiftui-latihan4
//
//  Created by afitra mamor on 26/10/22.
//

import SwiftUI

struct ContentView: View {
   
    let data : [ProductModel]=[
        ProductModel(id: 1, productName: "stadion Kanjuruan", photoProduct:"epl", productPrice: "Rp. 30.000", lokasi: "Malang", ratingCount: 4, totalRating: 56),
        ProductModel(id: 1, productName: "stadion Brawijaya", photoProduct:"epl", productPrice: "Rp. 100.000", lokasi: "Malang", ratingCount: 4, totalRating: 56),
        ProductModel(id: 1, productName: "stadion Si jalak harupat", photoProduct:"epl", productPrice: "Rp. 30.000", lokasi: "Malang", ratingCount: 4, totalRating: 56),
        ProductModel(id: 1, productName: "stadion Anjok ladang", photoProduct:"epl", productPrice: "Rp. 30.000", lokasi: "Malang", ratingCount: 4, totalRating: 56),
        ProductModel(id: 1, productName: "stadion Gelora Bung Tomo", photoProduct:"epl", productPrice: "Rp. 30.000", lokasi: "Malang", ratingCount: 4, totalRating: 56),
    ]
//    @State var cartCount : Int = 0
    @ObservedObject var globalData = GlobalObject()
    var body: some View {
        //        Product(data:self.data)
    
        NavigationView{
            ScrollView{
                ForEach(data){
                    item in
                    VStack(spacing:10){
                        Product(data:item, cart: self.globalData)
                         
                    }
                    .padding()
                }
            }
            .navigationBarTitle("Stadion hebat")
            .navigationBarItems(
                trailing:
                    HStack(spacing:20){
                        Button(action:{print("button navbar")}){
                            Image(systemName: "person.fill")
                                .accentColor(Color.orange)
                        }
                        NavigationLink(destination: DetailView(globalData: globalData)){
                            CartView(cart:globalData)
                        }
                      
                    }
            )
        }
        .navigationViewStyle(StackNavigationViewStyle()) // untuk tampilan lanscape
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
