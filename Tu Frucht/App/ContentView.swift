//
//  ContentView.swift
//  Tu Frucht
//
//  Created by Ahmed El Gndy on 25/12/2024.
//

import SwiftUI

struct ContentView: View {
    //MARK: -PROPERTIES
    var fruits:[Fruit] = fruitsData
    //MARK: -BODY
    var body: some View {
        NavigationView {
            List{
                ForEach(fruits.shuffled()) { fruit in
                    FruitRowView(fruit: fruit)
                        .padding(.vertical, 4)
                }
            }//::List
        }//:NavigationView
        .navigationTitle("Our Fruits")
      
            
    }
}
//MARK: -PREIVE
#Preview {
    ContentView(fruits: fruitsData)
}
