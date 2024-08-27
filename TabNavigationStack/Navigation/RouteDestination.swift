//
//  RouteDestination.swift
//  TabNavigationStack
//
//  Created by Ivan Barabanshchykov on 26.08.2024.
//

import SwiftUI

class RouteDestination: Hashable {
    
    var id: UUID = UUID()
    var view: AnyView
    
    init(view: AnyView) {
        self.view = view
    }
    
    static func == (lhs: RouteDestination, rhs: RouteDestination) -> Bool {
        return lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
