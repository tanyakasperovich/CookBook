//
//  RowView.swift
//  CookBook
//
//  Created by Татьяна Касперович on 5.09.23.
//

import SwiftUI
import SDWebImageSwiftUI

struct RowView: View {

    let breakfastRecipe: BreakfastRecipeViewModel
    
    var body: some View {
        HStack(alignment: .top) {
            ZStack {
                Color("ColorBG")
                    .frame(width: 60, height: 60)
                    .cornerRadius(4)
                
                WebImage(url: breakfastRecipe.recipeImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60)
                    .cornerRadius(4)
            }
            
            VStack(alignment: .leading) {
                Text(breakfastRecipe.recipe.label)
                    .font(.title3)
                Text("\(breakfastRecipe.recipe.calories)")
                    .font(.caption)
            }
            
            Spacer()

        }
    }
}

struct RowView1: View {
  let recipe: Recipe1

    
    var body: some View {
        HStack {
            
            Color("ColorBG")
                .frame(width: 60, height: 60)
                .cornerRadius(4)
            
            VStack(alignment: .leading) {
                Text(recipe.title)
                    .font(.title3)
                Text(recipe.subtitle)
                    .font(.caption)
            }
            
            Spacer()
            
            if recipe.isFavorite {
                Image(systemName: "heart")
                    .symbolVariant(.fill)
                    .foregroundColor(.red)
            }
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView1(recipe: Recipe1(id: 11, title: "Soup", rating: 4, subtitle: "Frahhdb hd dkk", ingredients: "2 medium onions, diced\n1 bell pepper, seeded and diced\n2 carrots, diced\n2 tbsp olive oil\n3 cloves garlic, chopped\n1/4 cup lime juice\n1-2 tsp curry paste\n1 can coconut milk (1 can = 1.5 cups)\n1 can chickpeas, drained and rinsed\n1-2 tbsp soy sauce\n2-3 medium tomato\n1 cup basil, fresh\n1 tsp maple syrup\n1 tsp cilantro", directions: "hgjvhdf  grhgj gh hfj hjg jg bh", isFavorite: true))
    }
}
