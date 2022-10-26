//
//  ContentView.swift
//  sanbox-swiftUi-latihan1
//
//  Created by afitra mamor on 26/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("ukaisya")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack (spacing:20){
                Logo()
                FormBox()
                
            }
            .padding(.all,20)
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct Logo : View{
    var body : some View{
        VStack{
            Image(systemName: "person.fill")
                .resizable()
                    .frame(width: 100, height: 100)
                    .background(Color.yellow)
                    .foregroundColor(Color.white)
                .padding()
                .background(Color.yellow)
                .cornerRadius(30)
            
            Text("Hello, world!")
                .foregroundColor(Color.white)
                .background(Color.orange)
            
            
            
        }
        
    }
}


struct FormBox : View{
    @State var username :String = ""
    @State var password :String=""
    
    var body: some View{
        VStack (alignment:.leading){
            Text("user name").font(.callout).bold()
            
            TextField("user name ...", text:$username)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Text("password ...").font(.callout).bold()
            SecureField("password ...", text:$password)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action: {print("Hello button")}){
                HStack{
                    Text("Sign in")
                    Spacer()
                       
                }
                
            }
            .padding()
            .background(Color.black)
            .cornerRadius(18)
            .foregroundColor(Color.white)
            
        }
        .padding(.all,20)
        .background(Color.orange)
        .cornerRadius(30)
        
    }
}
