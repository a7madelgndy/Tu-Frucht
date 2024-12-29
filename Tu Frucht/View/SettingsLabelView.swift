//
//  SettingsLabelView.swift
//  Tu Frucht
//
//  Created by Ahmed El Gndy on 29/12/2024.
//

import SwiftUI

struct SettingsLabelView: View {
    var titelText: String
    var labelImage : String
    var body: some View {
        HStack {
            Text(titelText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

#Preview {
    SettingsLabelView(titelText: "Frucht", labelImage: "info.circle")
        .padding()
}
