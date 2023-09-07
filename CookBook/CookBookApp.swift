//
//  CookBookApp.swift
//  CookBook
//
//  Created by Татьяна Касперович on 24.11.22.
//

import SwiftUI

@main
struct CookBookApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}


//
//@StateObject private var recipeBox = RecipeBox(recipes: load("recipeData.json"))
//@State private var selectedSidebarItem: SidebarItem? = SidebarItem.all
//@State private var selectedRecipeId: Recipe.ID?
//
//var body: some Scene {
//    WindowGroup {
//        NavigationSplitView {
//            SidebarView(selection: $selectedSidebarItem, recipeBox: recipeBox)
//        } content: {
//            ContentListView(selection: $selectedRecipeId, selectedSidebarItem: selectedSidebarItem ?? SidebarItem.all)
//        } detail: {
//            DetailView(recipeId: $selectedRecipeId)
//        }
//        .environmentObject(recipeBox)
//    }
//}
//}
