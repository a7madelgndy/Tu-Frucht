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
    @State private var isShowingSetting = false
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
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSetting.toggle()
                            }, label: {
                        Image(systemName: "slider.horizontal.3")
                    })
                    .sheet(isPresented: $isShowingSetting, content: {
                        SettingView()
                    })
                                
            )

        }//:NavigationView
        .navigationViewStyle(StackNavigationViewStyle())
            
    }
}
//MARK: -PREIVE
#Preview {
    ContentView(fruits: fruitsData)
}
