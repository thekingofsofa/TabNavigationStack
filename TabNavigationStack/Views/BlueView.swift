//
//  BlueView.swift
//  TabNavigationStack
//
//  Created by Ivan Barabanshchykov on 20.11.2023.
//

import SwiftUI

struct BlueView: View {
    
    @Environment(AppCoordinator.self) private var coordinator: AppCoordinator
    
    var body: some View {
        
        ZStack {
            Color.blue
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
                    navigateToRedView()
                } label: {
                    Text("Add Red")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding()
                }
            }
        }
    }
}

// MARK: - Router

extension BlueView {
    
    func navigateToTextViewOnTop() {
        
        let view = InjectedTextView(text: "Text View\nOn top of Blue View")
        let destination = RouteDestination(view: AnyView(view))
        coordinator.topPath.append(destination)
    }
    
    func navigateToRedView() {
        
        let destination = RouteDestination(view: AnyView(RedView()))
        coordinator.appendToActiveType(destination)
    }
}
