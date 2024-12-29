//
//  SettingsRowView.swift
//  Tu Frucht
//
//  Created by Ahmed El Gndy on 29/12/2024.
//

import SwiftUI

struct SettingsRowView: View {
    //MARK: PROPERTIES
    var name : String
    var content: String? = nil
    var linkelabel : String? = nil
    var linkDestination: String? = nil
    var body: some View {
        VStack {
            Divider()
                 .padding(.vertical, 4)
            HStack {
                Text(name)
                Spacer()
                if let content {
                    Text(content)
                }else
                {
                    if let linkelabel ,
                       let linkDestination
                    {
                        Link(linkelabel, destination: URL(string: "https://\(linkDestination)")! )
                        Image(systemName: "arrow.up.right.square")
                            .foregroundColor(.pink)
                    }else {
                        EmptyView()
                    }
                }
                
            }
        }
    }
}

#Preview {
    SettingsRowView(name: "Developer", content: "Ahmad El Gndy")
        .padding()
}
#Preview {
    SettingsRowView(name: "google" ,linkelabel: "google" , linkDestination: "Google.com")
        .padding()
}

