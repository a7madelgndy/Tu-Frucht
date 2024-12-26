//
//  FruitModel.swift
//  Tu Frucht
//
//  Created by Ahmed El Gndy on 26/12/2024.
//

import SwiftUI
//MARK: Fruit Data model
struct Fruit:Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors : [Color]
    var description : String
    var nutrition: [String]
}
