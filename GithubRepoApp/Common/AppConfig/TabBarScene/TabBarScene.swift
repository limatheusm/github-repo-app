//
//  TabBarScene.swift
//  GithubRepoApp
//
//  Created by Matheus Lima on 03/05/21.
//

import Foundation

protocol TabBarScene {
    var coordinator: NavigationCoordinator { get }
    var title: String { get }
    var iconNameOff: String { get }
    var iconNameOn: String { get }
}
