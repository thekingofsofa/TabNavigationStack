//
//  BlueView.swift
//  TabNavigationStack
//
//  Created by Ivan Barabanshchykov on 20.11.2023.
//

import SwiftUI

struct BlueView: View {
    
    @EnvironmentObject var coordinator: CoordinatorService
    
    var body: some View {
        
        ZStack {
            Color.blue
            VStack {
                Button {
                    coordinator.topPath.append(.red)
                } label: {
                    Text("Add Red on Top")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding()
                }
                
                Button {
                    coordinator.secondTabPath.append(.red)
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
