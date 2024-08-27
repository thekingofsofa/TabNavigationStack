//
//  InjectedTextView.swift
//  TabNavigationStack
//
//  Created by Ivan Barabanshchykov on 27.08.2024.
//

import SwiftUI

struct InjectedTextView: View {
    
    @Environment(AppCoordinator.self) private var coordinator: AppCoordinator
    let text: String
    
    init(text: String) {
        self.text = text
    }
    
    var body: some View {
        
        ZStack {
            VStack {
                Text(text)
                    .font(.largeTitle)
            }
        }
    }
}

// MARK: - Router

extension InjectedTextView {
    
    func navigateToGreenView() {
        
        let destination = RouteDestination(view: AnyView(GreenView()))
        coordinator.topPath.append(destination)
    }
}
