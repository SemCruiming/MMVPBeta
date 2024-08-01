//
//  OnboardingView.swift
//  MMVPBeta
//
//  Created by Sem Cruiming on 01/08/2024.
//

import SwiftUI

struct OnboardingView: View {
    @Binding var showOnboarding: Bool
    
    var body: some View {
        TabView {
            PageView(showOnboarding: $showOnboarding, title: "One", imageName: "bell", showDismissButton: false)
            
            PageView(showOnboarding: $showOnboarding, title: "Two", imageName: "bookmark", showDismissButton: false)
            
            PageView(showOnboarding: $showOnboarding, title: "Three", imageName: "airplane", showDismissButton: true)
            
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct PageView: View {
    @Binding var showOnboarding: Bool
    let title: String
    let imageName: String
    let showDismissButton: Bool
    
    var body: some View {
        VStack {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
                .padding()
            
            Text(title)
                .font(.title)
                .padding()
            
            if showDismissButton {
                Button(action: {
                    showOnboarding = false
                }, label: {
                    Text("Finish")
                        .frame(width: 200, height: 50)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(6)
                })
            }
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    @State static var showOnboarding = true
    
    static var previews: some View {
        OnboardingView(showOnboarding: $showOnboarding)
    }
}
