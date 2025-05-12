//
//  ContentView.swift
//  DineTime
//
//  Created by Matthew Chelliah on 5/11/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("Welcome to DineTime!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.top)
                
                Image("dineTimeLogo") // Add your app logo to Assets
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                    .padding()
                
                Text("Swipe through restaurants, filter by your preferences, and make dining decisions fun and easy!")
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .padding()
                
                VStack(spacing: 15) {
                    NavigationLink(destination: SwipeView()) {
                        MainButton(label: "Start Swiping")
                    }
                    
                    NavigationLink(destination: FilterOptionsView()) {
                        MainButton(label: "Filter Options")
                    }
                    
                    NavigationLink(destination: PreviousMatchesView()) {
                        MainButton(label: "Previous Matches")
                    }
                    
                    NavigationLink(destination: ShareWithFriendsView()) {
                        MainButton(label: "Swipe with Friends")
                    }
                }
                .padding(.horizontal, 20)
                
                Spacer()
            }
            .navigationTitle("DineTime")
        }
    }
}

struct MainButton: View {
    let label: String
    
    var body: some View {
        Text(label)
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.blue)
            .cornerRadius(10)
            .shadow(radius: 5)
    }
}

// Placeholder views for navigation
struct SwipeView: View {
    var body: some View {
        Text("Swipe through restaurants!")
            .font(.largeTitle)
    }
}

struct FilterOptionsView: View {
    var body: some View {
        Text("Filter by distance, cuisine type, price range, ratings, or randomize results.")
            .font(.largeTitle)
    }
}

struct PreviousMatchesView: View {
    var body: some View {
        Text("View your previous matches here!")
            .font(.largeTitle)
    }
}

struct ShareWithFriendsView: View {
    var body: some View {
        Text("Swipe with your friends!")
            .font(.largeTitle)
    }
}

#Preview {
    ContentView()
}

