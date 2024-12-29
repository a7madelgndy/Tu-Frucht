//
//  SwiftUIView.swift
//  Tu Frucht
//
//  Created by Ahmed El Gndy on 27/12/2024.
//

import SwiftUI

struct SwiftUIView: View {

    var body: some View {
        Image("blueberry")
            .shadow(color: Color.black.opacity(0.5),radius: 8 ,x: 6 , y : 8)
             .resizable()
             .scaledToFit()
   
        
     
    }
}

#Preview {
    SwiftUIView()
}
