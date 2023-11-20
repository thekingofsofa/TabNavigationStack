//
//  CoordinatorService.swift
//  TabNavigationStack
//
//  Created by Ivan Barabanshchykov on 20.11.2023.
//

import SwiftUI

class CoordinatorService: ObservableObject {

    enum Step: String {
        case red, blue, green
    }
    
    @Published var selectedTab: Int = 0
    @Published var topPath: [Step] = []
    @Published var firstTabPath: [Step] = []
    @Published var secondTabPath: [Step] = []
    @Published var thirdTabPath: [Step] = []

    func resolve(pathItem: Step) -> some View {
        Group {
            switch pathItem {
            case .red            : Color.red
            case .blue           : Color.blue
            case .green          : Color.green
            }
        }
    }
}
