//
//  ContentView.swift
//  sandbox-swiftui-latihan3
//
//  Created by afitra mamor on 26/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Home :View{
    var body: some View{
        NavigationView{
            Content()
            
            .navigationBarItems(
                leading:
                    HStack{
                        Button(action: {print("Hello Button")}){
                            Image("youtube_logo")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width: 35, height: 25)
                          
                        }
                        Text("Youtube")
                    },
                    
                    trailing:
                    HStack(spacing:10){
                        Button(action:{print("tes button")}){
                            Image(systemName:"tray.full")
                                .foregroundColor(Color.secondary)
                        }
                        Button(action:{print("tes button 2")}){
                            Image(systemName:"video.fill")
                                .foregroundColor(Color.secondary)
                        }
                        Button(action:{print("tes button 3")}){
                            Image(systemName:"magnifyingglass")
                                .foregroundColor(Color.secondary)
                        }
                        Button(action:{print("tes button 4")}){
                            Image("stevejob")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width: 35, height: 35)
//                                .cornerRadius(50)
                                .clipShape(Circle())
                               
                                
                        }
                    }
                )
            .navigationBarTitle("", displayMode:.inline)
        }
        .navigationViewStyle(StackNavigationViewStyle()) // agar di device ipad muncul navigasinya
        
    }
    
}
