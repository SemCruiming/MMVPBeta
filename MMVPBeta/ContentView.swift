//
//  ContentView.swift
//  MMVPBeta
//
//  Created by Sem Cruiming on 01/08/2024.
//

import SwiftUI

struct ContentView: View {
    @State var selectedTab = 0
    @AppStorage("showOnboarding") var showOnboarding: Bool = true
   
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Image(systemName: "house")
                .imageScale(.large)
            
                .tabItem {
                    Text("Home")
                    Image(systemName: "house")
                }
                .tag(0)
            
            Image(systemName: "gearshape")
                .imageScale(.large)
            
                .tabItem {
                    Text("Settings")
                    Image(systemName: "gearshape")
                }
                .tag(1)
            
            Image(systemName: "person.crop.circle")
                .imageScale(.large)
            
                .tabItem {
                    Text("Profile")
                    Image(systemName: "person.crop.circle")
                }
                .tag(2)
        }
        .fullScreenCover(isPresented: $showOnboarding, content: {
            OnboardingView(showOnboarding: $showOnboarding)
        })
    }
}

#Preview {
    ContentView()
}
