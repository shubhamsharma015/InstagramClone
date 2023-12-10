//
//  ContentView.swift
//  InstagramClone
//
//  Created by shubham sharma on 22/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            
            Spacer()
            
            TabView {
                HomePageView()
                    .tabItem {
                        Image(systemName: "house")
                    }
                SearchPageView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                    }
                SearchPageView()
                    .tabItem {
                        Image(systemName: "plus.app.fill")
                    }
                SearchPageView()
                    .tabItem {
                        Image(systemName: "heart.fill")
                    }
                EmptyView()
                    .tabItem {
                        Image(systemName: "person")
                    }
               
            }
        }
    }
}

#Preview {
    ContentView()
}
