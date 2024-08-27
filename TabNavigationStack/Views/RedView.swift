//
//  RedView.swift
//  TabNavigationStack
//
//  Created by Ivan Barabanshchykov on 20.11.2023.
//

import SwiftUI

struct RedView: View {
    
    @Environment(AppCoordinator.self) private var coordinator: AppCoordinator
    
    var body: some View {
        
        ZStack {
            Color.red
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
                    navigateToGreenView()
                } label: {
                    Text("Add Green")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding()
                }
            }
        }
    }
}

extension RedView {
    
    func navigateToTextViewOnTop() {
        
        let view = InjectedTextView(text: "Text View\nOn top of Red View")
        let destination = RouteDestination(view: AnyView(view))
        coordinator.topPath.append(destination)
    }
    
    func navigateToGreenView() {
        
        let destination = RouteDestination(view: AnyView(GreenView()))
        coordinator.appendToActiveType(destination)
    }
}
