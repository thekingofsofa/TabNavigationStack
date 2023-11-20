//
//  GreenView.swift
//  TabNavigationStack
//
//  Created by Ivan Barabanshchykov on 20.11.2023.
//

import SwiftUI

struct GreenView: View {
    
    @EnvironmentObject var coordinator: CoordinatorService
    
    var body: some View {
        
        ZStack {
            Color.green
            VStack {
                Button {
                    coordinator.topPath.append(.blue)
                } label: {
                    Text("Add Blue on Top")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding()
                }
                
                Button {
                    coordinator.thirdTabPath.append(.blue)
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
