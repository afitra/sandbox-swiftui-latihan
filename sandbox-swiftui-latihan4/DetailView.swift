//
//  DetailVIew.swift
//  sandbox-swiftui-latihan4
//
//  Created by afitra mamor on 12/11/22.
//

import Foundation
import SwiftUI
struct DetailView:View {
    @ObservedObject  var globalData : GlobalObject
    var body : some View{
        NavigationView{
            Text("Detail")
            .navigationBarTitle("Detail")
            .navigationBarItems(
                trailing:
                    HStack(spacing:20){
                        Button(action:{print("Button Detail cart")}){
                            Image(systemName:"person.fill")
                        }
                        CartView(cart: globalData )
                    }
            )
        }
    }
}
