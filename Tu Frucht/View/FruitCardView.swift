//
//  FruitCardView.swift
//  Tu Frucht
//
//  Created by Ahmed El Gndy on 25/12/2024.
//

import SwiftUI

struct FruitCardView: View {
    //MARK: PROPERTIES
    //MARK: BODY
    var body: some View {
        ZStack {
            VStack(spacing: 12) {
                //FURIT: IMAGE
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color.black.opacity(0.5),radius: 8 ,x: 6 , y : 8)
                //FURIT: TITLE

                Text("Blueberry")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundStyle(.white)
                    .shadow(color: Color.black.opacity(0.15), radius: 8, x: 2 , y : 2)
                //FURIT: HEADLINE
                Text("Blueberry are sweet m nutritious and widly  popular fruit all over the World . ")
                    .frame(maxWidth: 480)
                    .font(.title3)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .padding(.horizontal , 15)
                //BUTTON : START
                
            }//: VASTACK

        }//: ZStack
        .frame(minWidth: 0 , maxWidth: .infinity , minHeight: 0 , maxHeight: .infinity)
        .background(LinearGradient(colors: [Color("ColorBlueberryLight") , Color("ColorBlueberryDark")], startPoint: .top, endPoint: .bottom))
        .cornerRadius(15)
    }
}
//MARK: PREVIEW
struct FuitCardView_Preview: PreviewProvider {
    static var previews: some View {
        FruitCardView()
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
