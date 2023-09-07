//
//  CookBookViewModel.swift
//  CookBook
//
//  Created by Татьяна Касперович on 5.09.23.
//

import CoreData
import Foundation


class CookBookViewModel: ObservableObject {
    
    let manager = CoreDataManager.instance
    
    @Published var savedRecipes: [SavedRecipesEntity] = []
    @Published var myRecipes: [MyRecipesEntity] = []
    @Published var allRecipes: [Recipe] = []
    
    init() {
        getMyRecipes()
        getRecipes()
    }
    
    func getMyRecipes() {
        let request = NSFetchRequest<MyRecipesEntity>(entityName: "MyRecipesEntity")
        do {
            myRecipes = try manager.context.fetch(request)
        } catch let error {
            print("Error fetching. \(error.localizedDescription)")
        }
    }
    func getRecipes() {
        let request = NSFetchRequest<SavedRecipesEntity>(entityName: "SavedRecipesEntity")
        do {
            savedRecipes = try manager.context.fetch(request)
        } catch let error {
            print("Error fetching. \(error.localizedDescription)")
        }
    }
    
    func addMyRecipe(name: String, note: String) {
          let newRecipe = MyRecipesEntity(context: manager.context)
          newRecipe.name = name
          newRecipe.note = note
          save()
      }
    
    func addRecipe(name: String) {
        let newRecipe = SavedRecipesEntity(context: manager.context)
        newRecipe.name = name
 
        save()
    }
    
//    func updateRecipe() {
//
//        let existingBusiness = businesses[2]
//        existingBusiness.addToDepartments(departments[1])
//        save()
//
//    }
    

    func deleteMyRecipe() {
        let myRecipe = myRecipes[1]
        manager.context.delete(myRecipe)
        save()
    }
    
    func save() {
        manager.save()
    }
}
