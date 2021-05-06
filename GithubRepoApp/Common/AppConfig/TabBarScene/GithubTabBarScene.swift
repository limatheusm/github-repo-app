//
//  GithubTabBarScene.swift
//  GithubRepoApp
//
//  Created by Matheus Lima on 03/05/21.
//

import Foundation

enum GithubTabBarScene: Int, CaseIterable, TabBarScene {
    case search
    case about
    
    var iconNameOn: String {
        switch self {
        case .search:
            return "searchTabIconOn"
        case .about:
            return "infoTabIconOn"
        }
    }
    
    var iconNameOff: String {
        switch self {
        case .search:
            return "searchTabIconOff"
        case .about:
            return "infoTabIconOff"
        }
    }
    
    var title: String {
        switch self {
        case .search:
            return "Search"
        case .about:
            return "About"
        }
    }
    
    var coordinator: NavigationCoordinator {
        switch self {
        case .search:
            return SearchCoordinator()
        case .about:
            return AboutCoordinator()
        }
    }
}
