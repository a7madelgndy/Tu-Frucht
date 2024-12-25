//
//  OnboardingView.swift
//  Tu Frucht
//
//  Created by Ahmed El Gndy on 25/12/2024.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: -PROPERTIES
    //MARK: -BODY
    var body: some View {
        TabView {
            ForEach(0..<5) { item in
                FruitCardView()
            }
          
          
        }//: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical , 20)
    }
}
//MARK : PREVIEW
#Preview {
    OnboardingView()
}
