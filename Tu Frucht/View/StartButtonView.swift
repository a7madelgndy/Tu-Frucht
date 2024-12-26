//
//  StartButtonView.swift
//  Tu Frucht
//
//  Created by Ahmed El Gndy on 25/12/2024.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: PROPERTIES
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    //MARK: BODY
    var body: some View {
        Button {
            isOnboarding = false
        } label: {
            //Text
            HStack {
                Text("Start")
                    
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal , 16)
            .padding(.vertical, 10)
            .background(
                Capsule()
                    .strokeBorder(Color.white , lineWidth: 1.25)
                    
            )
            
        }//: Button
        .accentColor(.white)


    }
}

//MARK: PREVIEW
struct StartButtonView_Preview: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
    }
}
