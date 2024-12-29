//
//  FruitHeaderView.swift
//  Tu Frucht
//
//  Created by Ahmed El Gndy on 26/12/2024.
//

import SwiftUI

struct FruitHeaderView: View {
    //MARK: PROPERTIES
    @State private var isImageAnimating : Bool  = false
    var fruit : Fruit
    //MARK: BODY
    var body: some View {
        ZStack {
            LinearGradient(colors: fruit.gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: .black.opacity(0.14), radius: 8 , x : 8 , y : 8)
                .padding(.vertical, 20)
                .scaleEffect(isImageAnimating ? 1 : 6)
            
        }//: ZStack
        .frame(height: 440)
        .onAppear(perform: {
            withAnimation(Animation.smooth(duration: 0.4)) {
                isImageAnimating = true
            }
      
        })
    }
}
//MARK: PREVIEW

struct FruitHeaderView_Previews : PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[1])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}

