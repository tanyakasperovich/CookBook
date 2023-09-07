//
//  CookBookView.swift
//  CoreDataDemo
//
//  Created by Татьяна Касперович on 29.08.23.
//

import SwiftUI

struct CookBookView: View {
    @State private var selectedView = 0
    
    
    var body: some View {
        NavigationStack {
            VStack {
                Picker("", selection: $selectedView) {
                    Image(systemName: "bookmark.fill")
                        .tag(0)
                    Image(systemName: "star.fill")
                        .tag(1)
                    Image(systemName: "book.fill")
                        .tag(2)
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()
                
                    TabView(selection: $selectedView) {
                        SavedRecipesView().tag(0)
                        MyRecipesView().tag(1)
                        AllRecipesView().tag(2)
                    }
                    //.tabViewStyle(PageTabViewStyle())
                    .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
            }
        }
        
    }
}


struct CookBookView_Previews: PreviewProvider {
    static var previews: some View {
        CookBookView()
    }
}
