//
//  Content.swift
//  sandbox-swiftui-latihan3
//
//  Created by afitra mamor on 26/10/22.
//

import Foundation
import SwiftUI
struct Content : View{
    var body : some View{
        List{
//
          
            CellContent(imageContent: "epl", profileContent: "stevejob", title: "bermain bola di jalan", description: "di tonton sekitar 1 abad yang lalu", duration: "10.32")
            CellContent(imageContent: "epl", profileContent: "stevejob", title: "bermain bola di jalan", description: "di tonton sekitar 1 abad yang lalu", duration: "10.32")
            CellContent(imageContent: "epl", profileContent: "stevejob", title: "bermain bola di jalan", description: "di tonton sekitar 1 abad yang lalu", duration: "10.32")
        }
    }
}
