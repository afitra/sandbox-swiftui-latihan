//
//  ContentView.swift
//  sanndbox-swiftui-latihan6
//
//  Created by afitra mamor on 12/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Kolom(gambar1: "dua", gambar2: "epl", gambar3:"stevejob")
            Kolom(gambar1: "stevejob", gambar2: "dua", gambar3:"epl")
            Kolom(gambar1: "epl", gambar2: "stevejob", gambar3:"dua")

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Kolom : View{
    var gambar1,gambar2,gambar3 :String
    var body : some View{
        GeometryReader{
            geo in
            HStack{
                Image(self.gambar1)
                    .resizable()
                    .aspectRatio( contentMode: .fill)
                    .frame(width: geo.size.width/3, height: geo.size.height)
                    .clipped()
                Image(self.gambar2)
                    .resizable()
                    .aspectRatio( contentMode: .fill)
                    .frame(width: geo.size.width/3, height: geo.size.height)
                    .clipped()
                Image(self.gambar3)
                    .resizable()
                    .aspectRatio( contentMode: .fill)
                    .frame(width: geo.size.width/3, height: geo.size.height)
                    .clipped()
            }
        }
    }
}
