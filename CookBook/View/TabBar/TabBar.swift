//
//  TabBar.swift
//  CookBook
//
//  Created by Татьяна Касперович on 5.09.23.
//

import SwiftUI

struct TabBar: View {
    @State private var selectedView = 1
    
    var body: some View {
        NavigationStack {
            TabView(selection: $selectedView) {
                CatalogListView()
                    .tabItem {
                        Image(systemName: "list.bullet")
                        Text("Catalog")
                    } .tag(1)
                CookBookView()
                    .tabItem {
                        Image(systemName: "book.fill")
                        Text("CookBook")
                    } .tag(2)
                SettingsView()
                    .tabItem {
                        Image(systemName: "gearshape.fill")
                        Text("Settings")
                    } .tag(3)
            }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
