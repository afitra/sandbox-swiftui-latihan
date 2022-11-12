//
//  AuthUser.swift
//  sandbox-swiftui-latihan5
//
//  Created by afitra mamor on 12/11/22.
//

import Foundation
import Combine
import SwiftUI
import SystemConfiguration
class AuthUser:ObservableObject{
    @Published var isLogin : Bool = false
    @Published var isCorrect : Bool = true
}
