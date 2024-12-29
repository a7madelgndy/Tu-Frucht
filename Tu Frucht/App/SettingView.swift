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
                    //MARK: SECTION 1
                    GroupBox(
                        label:
                                SettingsLabelView(titelText: "Frucht", labelImage: "info.circle")
                , content: {
                    Divider()
                        .padding(.vertical, 4)
                    HStack(alignment:  .center , spacing: 10, content: {
                        Image("logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80)
                            .cornerRadius(10)
                        Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                            .font(.footnote)
                    })
                    })
                
                    //MARK: SECTION 3
                    GroupBox(
                        label :
                            SettingsLabelView(titelText: "Application", labelImage: "apps.iphone")
                    ) {
             
                        SettingsRowView(name: "Developer" , content: "Ahmed El gndy")
                        SettingsRowView(name: "Designer" , content: "Robert petras")
                        SettingsRowView(name: "Compatibility" , content: "ios 15")
                        SettingsRowView(name: "Website" , linkelabel: "linkedin" ,linkDestination: "www.linkedin.com")
                        SettingsRowView(name: "swiftUi" , content: "2.0")
                        SettingsRowView(name: "Verstion" , content: "1.1.0")
                    }

                    
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
                 
            }//:ScrollView
        }//:NavigationView
    }
}

#Preview {
    SettingView()
}
