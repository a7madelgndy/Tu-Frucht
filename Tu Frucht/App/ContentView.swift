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
                    NavigationLink(destination: FruitDetailView(fruit: fruit) ) {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
              
                }
            }//::List
            .navigationTitle("Our Fruits")

        }//:NavigationView
      
            
    }
}
//MARK: -PREIVE
#Preview {
    ContentView(fruits: fruitsData)
}
