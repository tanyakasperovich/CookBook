//
//  CatalogViewModel.swift
//  CookBook
//
//  Created by Татьяна Касперович on 5.09.23.
//

import Foundation

class CatalogViewModel: ObservableObject {
    @Published var allRecipes: [Recipe1] = [
        Recipe1(id: 1, title: "Apple Cake", rating: 4, subtitle: "Apple Cake", ingredients: "2 medium onions, diced\n1 bell pepper, seeded and diced\n2 carrots, diced\n2 tbsp olive oil\n3 cloves garlic, chopped\n1/4 cup lime juice\n1-2 tsp curry paste\n1 can coconut milk (1 can = 1.5 cups)\n1 can chickpeas, drained and rinsed\n1-2 tbsp soy sauce\n2-3 medium tomato\n1 cup basil, fresh\n1 tsp maple syrup\n1 tsp cilantro", directions: "Preheat oven to 360F. In large bowl mix together all dry ingredients. In a separate large bowl mix together all wet ingredients. Using a hand mixer or whisk, add dry ingredients to the wet ingredients and mix together well until you get a smooth batter.\nLine a baking tin with baking paper and then spray the sides with oil. Pour batter into the cake tin and spread evenly. Place the apple slices on the batter in a star shape.\nBake the cake in the preheated oven for 35 minutes. Let cool, then sprinkle with powdered sugar and cinnamon.", isFavorite: true),
        Recipe1(id: 2, title: "Chickpea Curry", rating: 5, subtitle: "Chickpea Curry", ingredients: "2 medium onions, diced\n1 bell pepper, seeded and diced\n2 carrots, diced\n2 tbsp olive oil\n3 cloves garlic, chopped\n1/4 cup lime juice\n1-2 tsp curry paste\n1 can coconut milk (1 can = 1.5 cups)\n1 can chickpeas, drained and rinsed\n1-2 tbsp soy sauce\n2-3 medium tomato\n1 cup basil, fresh\n1 tsp maple syrup\n1 tsp cilantro", directions: "Add oil, carrots, bell peppers, and onions into a large pan and cook on a low-medium heat until onions start to soften and turn clear, about 5 minutes. Add garlic and cook for 1 minute. Add curry paste and coconut milk, stirring until curry is dissolved. Add chickpeas and soy sauce, and cook on a medium heat for 5 minutes, bringing the curry to a boil. If it starts to burn, reduce heat immediately. Add the chopped tomatoes, chopped basil, lime juice, soy sauce and gently simmer the curry for another 2 minutes. If desired add a second tbsp soy sauce and the syrup or brown sugar. Give it another stir.\nGarnish with cilantro and serve with lime wedges and rice.", isFavorite: false)
    ]
    
    
    
//    func toggleIsFavorite(_ recipe: Recipe) {
//        var recipeToUpdate = recipe
//        recipeToUpdate.isFavorite.toggle()
//    }
//  
 
}
