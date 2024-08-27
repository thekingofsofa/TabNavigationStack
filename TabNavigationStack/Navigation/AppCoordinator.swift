//
//  AppCoordinator.swift
//  TabNavigationStack
//
//  Created by Ivan Barabanshchykov on 20.11.2023.
//

import SwiftUI
import Observation

@Observable
class AppCoordinator {
    
    var userLogged = false
    var authPath: [RouteDestination] = []
    var selectedTab = 0
    var firstTabPath: [RouteDestination] = []
    var secondTabPath: [RouteDestination] = []
    var thirdTabPath: [RouteDestination] = []
    var topPath: [RouteDestination] = []
    
    func appendToActiveType(_ route: RouteDestination) {
        switch selectedTab {
        case 0:
            firstTabPath.append(route)
        case 1:
            secondTabPath.append(route)
        case 2:
            thirdTabPath.append(route)
        default: break
        }
    }
}
