//
//  CoordinatorView.swift
//  TabNavigationStack
//
//  Created by Ivan Barabanshchykov on 18.11.2023.
//

import SwiftUI

struct CoordinatorView: View {
    
    @State var coordinator = AppCoordinator()
    
    var body: some View {
        ZStack {
            tabBarView
                .zIndex(0)
            
            NavigationStack(path: $coordinator.topPath) {
                Color.clear
                    .navigationDestination(for: RouteDestination.self) { destination in
                        destination.view
                    }
                // In case of lower iOS version check https://stackoverflow.com/questions/74792877/navigationstack-inside-tabview-inside-navigationstack-does-not-work/77518171#77518171 to use Introspect library to delete backfround color layer of NavigationStack
                    .containerBackground(.clear, for: .navigation)
            }
            .zIndex(1)
            .allowsHitTesting(!coordinator.topPath.isEmpty)
        }
        .environment(coordinator)
    }
    
    private var authFlowView: some View {
        NavigationStack(path: $coordinator.authPath) {
            Color.clear
                .navigationDestination(for: RouteDestination.self) { destination in
                    destination.view
                }
                .containerBackground(.clear, for: .navigation)
        }
    }
    
    private var tabBarView: some View {
        TabView(selection: $coordinator.selectedTab) {
            NavigationStack(path: $coordinator.firstTabPath) {
                RedView()
                    .navigationDestination(for: RouteDestination.self) { destination in
                        destination.view
                    }
            }
            .tag(0)
            .tabItem {
                Text("First")
                Image(systemName: "circle")
            }
            
            NavigationStack(path: $coordinator.secondTabPath) {
                BlueView()
                    .navigationDestination(for: RouteDestination.self) { destination in
                        destination.view
                    }
            }
            .tag(1)
            .tabItem {
                Text("Second")
                Image(systemName: "circle")
            }
            
            NavigationStack(path: $coordinator.thirdTabPath) {
                GreenView()
                    .navigationDestination(for: RouteDestination.self) { destination in
                        destination.view
                    }
            }
            .tag(2)
            .tabItem {
                Text("Third")
                Image(systemName: "circle")
            }
        }
    }
}

#Preview {
    CoordinatorView()
}
