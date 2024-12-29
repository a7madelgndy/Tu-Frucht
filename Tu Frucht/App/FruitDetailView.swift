//
//  FruitDetailView.swift
//  Tu Frucht
//
//  Created by Ahmed El Gndy on 26/12/2024.
//

import SwiftUI

struct FruitDetailView: View {
    var fruit : Fruit
    var body: some View {
        NavigationView {
         
            ScrollView(.vertical , showsIndicators: false){
                VStack(alignment: .center , spacing: 20) {
                    //Header
                    FruitHeaderView(fruit: fruit)
                
                    VStack(alignment: .leading , spacing: 20){
                        //headline
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundStyle(fruit.gradientColors[1])
                        //Nutrients
                        FruitNutrientsView(fruit: fruit)
                        //Subheader
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        //subteadline
                        Text("learn more about \(fruit.title)".uppercased())
                            .foregroundStyle(fruit.gradientColors[1])
                        //description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        //line
                        SourceLinkView()
                            .padding(.top , 10)
                            .padding(.bottom, 40)
                    }//:VSTACk
                    
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640 , alignment: .center)
                }//:VSTACK
                .navigationBarTitle(fruit.title , displayMode: .inline)
                .navigationBarHidden(true)
            }//:ScrollView
            .edgesIgnoringSafeArea(.top)

       }//:navigation
    }
}

#Preview {
    FruitDetailView(fruit: fruitsData[1])
}
