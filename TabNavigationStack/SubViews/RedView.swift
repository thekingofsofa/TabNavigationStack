//
//  RedView.swift
//  TabNavigationStack
//
//  Created by Ivan Barabanshchykov on 20.11.2023.
//

import SwiftUI

struct RedView: View {
    
    @EnvironmentObject var coordinator: CoordinatorService
    
    var body: some View {
        
        ZStack {
            Color.red
            VStack {
                Button {
                    coordinator.topPath.append(.green)
                } label: {
                    Text("Add Green on Top")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding()
                }
                
                Button {
                    coordinator.firstTabPath.append(.green)
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
