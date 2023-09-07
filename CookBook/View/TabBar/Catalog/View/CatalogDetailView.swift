//
//  CatalogDetailView.swift
//  CookBook
//
//  Created by Татьяна Касперович on 5.09.23.
//

import SwiftUI
import SDWebImageSwiftUI

struct CatalogDetailView: View {
    @StateObject var cookBookVM = CookBookViewModel()
    @StateObject private var vm = CatalogListViewModel()
    
    let breakfastRecipe: BreakfastRecipeViewModel
    @State var isSaved: Bool = false

    
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                ZStack {
                    Color.red
                    //                        .frame(width: .infinity, height: .infinity)
                    
                    WebImage(url: breakfastRecipe.recipeImage)
                        .resizable()
                        .scaledToFit()
                    //                        .frame(width: .infinity, height: .infinity)
                    
                    VStack {
                        Spacer()
                        HStack() {
                            Spacer()
                            VStack {
                                Text(breakfastRecipe.recipe.label)
                                    .font(.title2)
                                //StarRating(rating: $recipe.rating)
                                Text("\(breakfastRecipe.recipe.calories)")
                                    .font(.subheadline)
                            }
                            Spacer()
                        }
                        .padding()
                        .background(Color.primary
                            .colorInvert()
                            .opacity(0.75))
                    }
                }
                
                
                HStack(alignment: .top, spacing: 20) {
                    VStack {
                        Text("INGREDIENTS")
                            .underline()
                        //.padding(.bottom)
                            .padding()
                        
                        ForEach(breakfastRecipe.recipe.ingredientLines, id: \.self) { ingredient in
                            Text(ingredient)
                                .font(.caption)
                                .lineSpacing(10)
                        }
                        .padding()
                        
                    }
                    //.padding()
                    .background(Color("ColorBG"))
                }
                .padding()
            }
        }
        .navigationBarItems(trailing:
                                Button {
            isSaved = true
            cookBookVM.addRecipe(name: breakfastRecipe.recipe.label)
            cookBookVM.getRecipes()
        } label: {
            Image(systemName: isSaved == true ? "bookmark.fill" : "bookmark")
        })
        
    }
}

struct CatalogDetailView1: View {
    var recipe: Recipe1
    @State var isSet: Bool = false
    
    var body: some View {
        VStack {
            
            HStack {
                Spacer()
                VStack {
                    Text(recipe.title)
                        .font(.title2)
                    //StarRating(rating: $recipe.rating)
                    Text(recipe.subtitle)
                        .font(.subheadline)
                }
                Spacer()
            }
            .padding()
            .background(Color.primary
                .colorInvert()
                .opacity(0.75))
            
            
            
            HStack(alignment: .top, spacing: 20) {
                VStack {
                    Text("INGREDIENTS")
                        .underline()
                        .padding(.bottom)
                    //                    Text(recipe.ingredientLines)
                    //                        .font(.caption)
                    //                        .lineSpacing(10)
                }
                .padding()
                .background(Color("ColorBG"))
                
                VStack(alignment: .leading) {
                    Text("Directions")
                        .font(.title3)
                        .padding(.bottom)
                    //  Text(recipe.directions)
                }
            }
            .padding()
        }
    }
}

struct CatalogDetailView1_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            CatalogDetailView1(recipe: Recipe1(id: 11, title: "Soup", rating: 4, subtitle: "Frahhdb hd dkk", ingredients: "2 medium onions, diced\n1 bell pepper, seeded and diced\n2 carrots, diced\n2 tbsp olive oil\n3 cloves garlic, chopped\n1/4 cup lime juice\n1-2 tsp curry paste\n1 can coconut milk (1 can = 1.5 cups)\n1 can chickpeas, drained and rinsed\n1-2 tbsp soy sauce\n2-3 medium tomato\n1 cup basil, fresh\n1 tsp maple syrup\n1 tsp cilantro", directions: "hgjvhdf  grhgj gh hfj hjg jg bh", isFavorite: false))
        }
    }
}
