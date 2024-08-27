//
//  GreenView.swift
//  TabNavigationStack
//
//  Created by Ivan Barabanshchykov on 20.11.2023.
//

import SwiftUI

struct GreenView: View {
    
    @Environment(AppCoordinator.self) private var coordinator: AppCoordinator
    
    var body: some View {
        
        ZStack {
            Color.green
            VStack {
                Button {
                    navigateToTextViewOnTop()
                } label: {
                    Text("Add Text View on Top")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding()
                }
                
                Button {
                    navigateToBlueView()
                } label: {
                    Text("Add Blue")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding()
                }
            }
        }
    }
}

// MARK: - Router

extension GreenView {
    
    func navigateToTextViewOnTop() {
        
        let view = InjectedTextView(text: "Text View\nOn top of Green View")
        let destination = RouteDestination(view: AnyView(view))
        coordinator.topPath.append(destination)
    }
    
    func navigateToBlueView() {
        
        let destination = RouteDestination(view: AnyView(BlueView()))
        coordinator.appendToActiveType(destination)
    }
}

