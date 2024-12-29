//
//  SourceLinkView.swift
//  Tu Frucht
//
//  Created by Ahmed El Gndy on 26/12/2024.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox {
            HStack {
                Text("Conent Source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://www")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

struct SourceLinkView_Previews : PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

