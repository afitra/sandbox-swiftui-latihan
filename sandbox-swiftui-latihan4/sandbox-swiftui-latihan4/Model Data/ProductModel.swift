//
//  ProductModel.swift
//  sandbox-swiftui-latihan4
//
//  Created by afitra mamor on 26/10/22.
//

import Foundation

import SwiftUI
struct ProductModel : Identifiable{
    let id:Int
    let productName:String
    let photoProduct:String
    let productPrice:String
    let lokasi :String
    let ratingCount:Int
    let totalRating:Int
    
    init(id: Int, productName: String, photoProduct: String, productPrice: String, lokasi: String, ratingCount: Int, totalRating: Int) {
        self.id = id
        self.productName = productName
        self.photoProduct = photoProduct
        self.productPrice = productPrice
        self.lokasi = lokasi
        self.ratingCount = ratingCount
        self.totalRating = totalRating
    }
}
