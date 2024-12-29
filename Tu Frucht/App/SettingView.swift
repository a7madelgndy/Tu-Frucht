//
//  SettingView.swift
//  Tu Frucht
//
//  Created by Ahmed El Gndy on 29/12/2024.
//

import SwiftUI

struct SettingView: View {
    //MARK: PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    //MARK: BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical , showsIndicators: false) {
                VStack(spacing: 20){
                    
                }
                .navigationBarTitle(Text("Settings") , displayMode: .large)
                .padding()
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }, label: {
                            Image(systemName: "xmark")
                        })
                )
                
            }
        }
    }
}

#Preview {
    SettingView()
}
