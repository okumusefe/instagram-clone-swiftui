//
//  MainTabView.swift
//  instaCloneApp
//
//  Created by Efe on 19.07.2025.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            
            FeedView()
                .tabItem {
                    Image(systemName: "house")
                }
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            Text("Upload Post")
                .tabItem {
                    Image(systemName: "plus.square")
                }
            Text("Notifications")
                .tabItem {
                    Image(systemName: "heart")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                }
            
        }
        .accentColor(Color("tabBarItemColor"))
    }
}

#Preview {
    MainTabView()
}
