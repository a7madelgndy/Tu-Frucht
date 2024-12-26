//
//  FruitCardView.swift
//  Tu Frucht
//
//  Created by Ahmed El Gndy on 25/12/2024.
//

import SwiftUI

struct FruitCardView: View {
    //MARK: PROPERTIES
    @State private var isAnimating : Bool = false
    let fruit: Fruit
    //MARK: BODY
    var body: some View {
        ZStack {
            VStack(spacing: 12) {
                //FURIT: IMAGE
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .scaleEffect(isAnimating ? 1 : 0.6)
                    .shadow(color: Color.black.opacity(0.5),radius: 8 ,x: 6 , y : 8)
                //FURIT: TITLE

                Text(fruit.title)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundStyle(.white)
                    .shadow(color: Color.black.opacity(0.15), radius: 8, x: 2 , y : 2)
                    
                //FURIT: HEADLINE
                Text(fruit.headline)
                    .frame(maxWidth: 480)
                    .font(.title3)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .padding(.horizontal , 15)
                //BUTTON : START
                StartButtonView()
            }//: VASTACK

        }//: ZStack
        .onAppear(perform: {
            withAnimation(.linear(duration: 0.3)) {
                isAnimating = true
            }
        })
        .frame(minWidth: 0 , maxWidth: .infinity , minHeight: 0 , maxHeight: .infinity)
        .background(LinearGradient(colors:
            fruit.gradientColors, startPoint: .top, endPoint: .bottom))
        .cornerRadius(15)
        .padding(.horizontal , 20)
    }
}
//MARK: PREVIEW
struct FuitCardView_Preview: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[1])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
