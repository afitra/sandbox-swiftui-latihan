//
//  CellContent.swift
//  sandbox-swiftui-latihan3
//
//  Created by afitra mamor on 26/10/22.
//

import Foundation
import SwiftUI

struct CellContent : View{
    var imageContent :String
    var profileContent: String
    var title :String
    var description :String
    var duration :String
    
    var body:some View{
        VStack{
            ZStack(alignment: .bottomTrailing){
                Image(imageContent)
                    .resizable()
                    .aspectRatio( contentMode:.fill)
                Text(duration)
                    .padding(.all,5)
                    .foregroundColor(Color.white)
                    .font(.caption)
                    .background(Color.black)
                    .cornerRadius(5)
                    .padding(.trailing,5)
                    .padding(.bottom,5)
            }
            HStack(spacing:20){
                Image(profileContent)
                    .resizable()
                    .frame(width: 30, height: 30)
                    .clipShape(Circle())
                VStack(alignment: .leading){
                    Text(title)
                        .font(.headline)
                    HStack{
                        Text(description)
                            .font(.caption)
                        
                    }
                    
                    
                }
                Spacer()
                Image(systemName: "list.bullet")
            }
        }
        
    }
}
