//
//  CatalogListView.swift
//  CookBook
//
//  Created by Татьяна Касперович on 5.09.23.
//

import SwiftUI
import SDWebImageSwiftUI

struct CatalogListView: View {
    @StateObject private var vm = CatalogListViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                    ForEach(vm.breakfastRecipes, id: \.recipeImage) { breakfastRecipe in
                                            NavigationLink {
                                                CatalogDetailView(breakfastRecipe: breakfastRecipe)
                                            } label: {
                                                //Text(hit.recipe.label)
                                                RowView(breakfastRecipe: breakfastRecipe)
                                            }
                    }

            }
            .onAppear(){
                vm.getRecipes()
            }
            .navigationTitle("Breakfast")
        }
    }
}

struct CatalogListView_Previews: PreviewProvider {
    static var previews: some View {
        CatalogListView()
    }
}


