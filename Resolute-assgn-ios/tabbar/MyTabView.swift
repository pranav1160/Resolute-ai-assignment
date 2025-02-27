//
//  MyTabView.swift
//  Resolute-assgn-ios
//
//  Created by Pranav on 27/02/25.
//


//
//  TabView.swift
//  doubtDevs
//
//  Created by Pranav on 24/02/25.
//

import SwiftUI

struct MyTabView: View {
    var body: some View {
        TabView {
            Text("Home Screen")
                .tabItem {
                    Image(systemName: "house.fill")
                
                }
            
            Text("Search Screen")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                   
                }
            
            Text("Create Screen")
                .tabItem {
                    Image(systemName: "plus.app.fill")
                    
                }
            
            
            Text("Heart Screen")
                .tabItem {
                    Image(systemName: "heart.fill")
                  
                }
            
            
            Text("Heart Screen")
                .tabItem {
                    Image(systemName: "person.fill")
                   
                }
        }.tint(.black)
    }
}

#Preview {
    MyTabView()
}
