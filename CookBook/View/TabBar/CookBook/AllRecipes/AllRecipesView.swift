//
//  AllRecipesView.swift
//  CookBook
//
//  Created by Татьяна Касперович on 5.09.23.
//

import SwiftUI

struct AllRecipesView: View {
    @StateObject var vm = CookBookViewModel()
    @StateObject var facevm =  CatalogViewModel()
    @State private var showFavoritesOnly = false
    
    var filteredRecipes: [Recipe1] {
        facevm.allRecipes.filter { recipe in
            (!showFavoritesOnly || recipe.isFavorite)
        }
    }
    
    var body: some View {
        List {
            Toggle(isOn: $showFavoritesOnly) {
                Text("Favorites only")
            }
            
            
            ForEach(filteredRecipes) { recipe in
                NavigationLink(destination: CatalogDetailView1(recipe: recipe)) {
                    RowView1(recipe: recipe)
                }
            }
        }
    }
}

struct AllRecipesView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            AllRecipesView()
        }
    }
}
