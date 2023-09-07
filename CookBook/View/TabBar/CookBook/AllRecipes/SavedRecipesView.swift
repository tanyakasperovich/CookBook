//
//  SavedRecipesView.swift
//  CookBook
//
//  Created by Татьяна Касперович on 5.09.23.
//

import SwiftUI

struct SavedRecipesView: View {
    @StateObject var vm = CookBookViewModel()

    var body: some View {
        List {
            ForEach (vm.savedRecipes, id: \.name) { recipe in
                HStack {
                    Text(recipe.name ?? "")
                        .padding()
                        .background(Color.red.opacity(0.15))
                    Spacer()
//                    Button {
//                        vm.deleteMyRecipe()
//                        vm.getMyRecipes()
//                    } label: {
//                        Text("DELETE")
//                            .foregroundColor(.red)
//                    }
                }
                .padding(.horizontal)
            }
        }
            .navigationTitle("Saved Recipes")
    }
}

struct SavedRecipesView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            SavedRecipesView()
        }
    }
}
