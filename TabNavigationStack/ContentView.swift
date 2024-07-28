//
//  ContentView.swift
//  TabNavigationStack
//
//  Created by Ivan Barabanshchykov on 18.11.2023.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var coordinator = CoordinatorService()
    
    var body: some View {
        
        ZStack {
            tabBarView
                .zIndex(0)
            
            NavigationStack(path: $coordinator.topPath) {
                Color.clear
                    .navigationDestination(for: CoordinatorService.Step.self) { destination in
                        coordinator.resolve(pathItem: destination)
                    }
                    .containerBackground(.clear, for: .navigation)
            }
            .zIndex(1)
            .allowsHitTesting(!coordinator.topPath.isEmpty)
        }
        .environmentObject(coordinator)
    }
    
    var tabBarView: some View {
        
        TabView(selection: $coordinator.selectedTab) { [coordinator] in
            
            NavigationStack(path: $coordinator.firstTabPath) {
                RedView()
                    .navigationDestination(for: CoordinatorService.Step.self) { destination in
                        coordinator.resolve(pathItem: destination)
                    }
            }
            .tag(1)
            .tabItem {
                Text("First")
            }
            
            NavigationStack(path: $coordinator.secondTabPath) {
                BlueView()
                    .navigationDestination(for: CoordinatorService.Step.self) { destination in
                        coordinator.resolve(pathItem: destination)
                    }
            }
            .tag(2)
            .tabItem {
                Text("Second")
            }
            
            NavigationStack(path: $coordinator.thirdTabPath) {
                GreenView()
                    .navigationDestination(for: CoordinatorService.Step.self) { destination in
                        coordinator.resolve(pathItem: destination)
                    }
            }
            .tag(3)
            .tabItem {
                Text("Third")
            }
        }
    }
}

#Preview {
    ContentView()
}
