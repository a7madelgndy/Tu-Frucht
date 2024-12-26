//
//  FruitRowView.swift
//  Tu Frucht
//
//  Created by Ahmed El Gndy on 26/12/2024.
//

import SwiftUI

struct FruitRowView: View {
    //MARK: PROPERTIES
    let fruit: Fruit
    //MARK: BODY
    var body: some View {
        HStack {
            //IMAGE
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height:  80)
                .shadow(color: Color.black.opacity(0.3), radius: 3 ,x :2 , y : 2)
                .background(
                    LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom)
                )
                .cornerRadius(15)
            //VStack Fro title and headline
            VStack(alignment: .leading ) {
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(.secondary)
                
            }
        }//: HSTACK
    }
}
//MARK: PREVIEW
#Preview {
    FruitRowView(fruit: fruitsData[0])
        .previewLayout(.sizeThatFits)
}
