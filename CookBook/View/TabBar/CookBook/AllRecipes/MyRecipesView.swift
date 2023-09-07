//
//  MyRecipesView.swift
//  CookBook
//
//  Created by Татьяна Касперович on 5.09.23.
//

import SwiftUI

struct MyRecipesView: View {
    @StateObject var vm = CookBookViewModel()
    @State var titleTextField = ""
    @State var noteTextField = ""
    var body: some View {

                VStack(spacing: 20) {
                 
                        TextField("Add title here...", text: $titleTextField)
                            .font(.headline)
                            .padding(.leading)
                            .frame(height: 55)
                            .background(Color(#colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)))
                            .cornerRadius(15)
                            .padding(.horizontal)
                        
                        TextField("Add note here...", text: $noteTextField)
                            .font(.headline)
                            .padding(.leading)
                            .frame(height: 150)
                            .background(Color(#colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)))
                            .cornerRadius(15)
                            .padding(.horizontal)
                    Button {
                        vm.addMyRecipe(name: titleTextField, note: noteTextField)
                        vm.getMyRecipes()
                    } label: {
                        ZStack {
                            Color.red.cornerRadius(25)
                                .frame(height: 55)
                                .frame(maxWidth: .infinity)
                        
                            Text("+ Add Recipe")
                                .foregroundColor(.white)
                        }
                    }
                    
                    ScrollView(.vertical, showsIndicators: true) {
                        VStack(alignment: .leading) {
                            ForEach(vm.myRecipes) {recipes in
                                HStack {
                                    Text(recipes.name ?? "")
                                        .padding()
                                        .background(Color.red.opacity(0.15))
                                    Spacer()
                                    Button {
                                        vm.deleteMyRecipe()
                                        vm.getMyRecipes()
                                    } label: {
                                        Text("DELETE")
                                            .foregroundColor(.red)
                                    }
                                }
                                .padding(.horizontal)
                            }
                       
                        }
                    }
                    
                }
                .padding()

            .navigationTitle("My Recipes")
        }
}

struct MyRecipesView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            MyRecipesView()
        }
    }
}
