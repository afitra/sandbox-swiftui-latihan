//
//  Login.swift
//  sandbox-swiftui-latihan5
//
//  Created by afitra mamor on 12/11/22.
//

import Foundation
import SwiftUI
struct Login : View {
    @State var username : String = ""
    @State var password : String = ""
    @EnvironmentObject var userAuth: AuthUser
    let lightGreyColor = Color(red:239.0/255.0,green:243.0/255.0, blue:244.0/255.0, opacity: 1.0)
    func checkLogin(){
        if(username == "a"&&password == "a"){
            userAuth.isLogin = true
        }else{
            userAuth.isLogin = false
            userAuth.isCorrect = false
        }
    }
    var body : some View{
        ZStack{
            Color.white
                .edgesIgnoringSafeArea(.all)
            VStack{
                HStack{
                    HStack{
                        VStack{
                            Text("Hi man")
                                .bold()
                                .font(.largeTitle)
                                .foregroundColor(Color.white)
                                
                            Text("Welcome Back")
                                .font(.title)
                                .foregroundColor(Color.white)
                               
                                
                        }
                        Spacer()
                        Image("epl")
                            .frame(width:80,height: 80)
                            .padding()
                            .clipShape(Circle())
                            .shadow(radius: 10)
                            .overlay(Circle().stroke(Color.white, lineWidth: 2))

                    }
                    Spacer()
                    
                }
                .frame(height:180)
                .padding(30)
                .background(Color.purple)
                .clipShape(CustomShape(corner: .bottomRight, radii: 30))
                .clipShape(CustomShape(corner: .bottomLeft, radii: 30))
                .edgesIgnoringSafeArea(.top)
                
                VStack(alignment: .leading){
                    Text("Username/email")
                    TextField("username ", text:$username)
                        .padding()
                        .background(lightGreyColor)
                        .cornerRadius(5.0)
                        .autocapitalization(.none)
                    //                     show error
                    if(!userAuth.isCorrect){
                        Text("usename and password not passed")
                            .foregroundColor(Color.red)
                    }
                    Text("password")
                    SecureField("password ", text:$password)
                        .padding()
                        .background(lightGreyColor)
                        .cornerRadius(5.0)
                    
//                     show error
                    if(!userAuth.isCorrect){
                        Text("usename and password not passed")
                            .foregroundColor(Color.red)
                    }
                    HStack{
                        Button(action:{print("forgot password butoon")}){
                            Text("forgot Password")
                            
                        }
                        Spacer()
                    }
                    HStack{
                        Spacer()
                        Button(action: {self.checkLogin()}){
                            Text("Sign")
                                .bold()
                                .font(.callout)
                                .foregroundColor(Color.white)
                        }
                        Spacer()
                            
                    }
                    .padding()
                    .background(Color.orange)
//                    .overlay(Circle())
                    .cornerRadius(50)
                    HStack{
                        Spacer()
                        Button(action: {print("button privacy policy")}){
                            Text("privacy policy")
                                .bold()
                                .font(.callout)
                                .foregroundColor(Color.purple)
                        }
                        Spacer()
                    }
                    .padding()
                    HStack{
                        Text("You Haven't an account ???")
                        Spacer()
                        Button(action: {print("Sign up")}){
                            Text("Sign Up")
                                .bold()
                                .font(.callout)
                                .foregroundColor(Color.purple)
                        }
                    }
                    .padding()
                }
                .padding(20)
                Spacer()
            }
            
        }
    }
        
}


//Custom Shape
struct CustomShape : Shape {
    var corner : UIRectCorner
    var radii : CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corner, cornerRadii: CGSize(width: radii, height: radii))
        
        return Path(path.cgPath)
    }
}
