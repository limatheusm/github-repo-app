//
//  SearchCoordinator.swift
//  GithubRepoApp
//
//  Created by Matheus Lima on 03/05/21.
//

import Foundation
import UIKit

class SearchCoordinator: NavigationCoordinator {
    var isCompleted: (() -> Void)?
    var rootViewController: UINavigationController
    var childCoordinators = [Coordinator]()
    
    init() {
        self.rootViewController = UINavigationController()
    }

    func start() {
        let searchViewController = SearchViewController()
        self.rootViewController.viewControllers = [searchViewController]
    }
}
