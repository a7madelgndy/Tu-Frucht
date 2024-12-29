//
//  FruitNutrientsView.swift
//  Tu Frucht
//
//  Created by Ahmed El Gndy on 28/12/2024.
//

import SwiftUI

struct FruitNutrientsView: View {
    //MARK: PROPERTIES
    var fruit : Fruit
    var nutrients : [String] = ["Energy" , "Sugar", "Protein", "Vitamins" ,"Minearals"]
    //MARK: BODY
    var body: some View {
        GroupBox {
            DisclosureGroup("Nutritional value per 100g"){
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider()
                        .padding(.vertical, 20)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text("\(nutrients[item])")
                        }
                        .font(.system(.body).bold())
                        .foregroundColor(fruit.gradientColors[1])
                        Spacer(minLength: 25)
                        Text ("\(fruit.nutrition[item])")
                        
                    }
                }
            }//:DisclosureGroup
        }//:groupBox
    }
}
//MARK: preivews

struct FruitNutrientsView_Previews : PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[1])
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
            
    }
}
