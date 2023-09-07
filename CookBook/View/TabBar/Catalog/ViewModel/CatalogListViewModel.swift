//
//  CatalogListViewModel.swift
//  CookBook
//
//  Created by Татьяна Касперович on 6.09.23.
//

import Foundation

class CatalogListViewModel: ObservableObject {
    @Published var breakfastRecipes: [BreakfastRecipeViewModel] = []
    
    // BREAKFAST....
  //https://api.edamam.com/api/recipes/v2?type=public&app_id=c9046c60&app_key=48999d0ae745b1a6b487d8e6618d2680&mealType=Breakfast
    
    func getRecipes(){
        let apiService = APIService.shared
            apiService.getJSON(urlString:
                "https://api.edamam.com/api/recipes/v2?type=public&app_id=c9046c60&app_key=48999d0ae745b1a6b487d8e6618d2680&mealType=Breakfast") {
                    (result: Result<BreakfastData,APIService.APIError>) in
                    switch result {
                    case .success(let breakfast):
                        DispatchQueue.main.async {
                            self.breakfastRecipes = breakfast.hits.map { BreakfastRecipeViewModel(recipe: $0.recipe)}
                        }
                    case .failure(let apiError):
                        switch apiError {
                        case .error(let errorString):
                            print(errorString)
                        }
                    }
        }
    }
    
}


struct BreakfastRecipeViewModel {
    //var hit: Hit
    var recipe: Recipe
    
    var recipeImage: URL {
                let urlString = recipe.image
                return URL(string: urlString)!
            }
}
