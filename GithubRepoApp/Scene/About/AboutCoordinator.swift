//
//  AboutCoordinator.swift
//  GithubRepoApp
//
//  Created by Matheus Lima on 03/05/21.
//

import Foundation
import UIKit

class AboutCoordinator: NavigationCoordinator {
    var isCompleted: (() -> Void)?
    var rootViewController: UINavigationController
    var childCoordinators = [Coordinator]()
    
    init() {
        self.rootViewController = UINavigationController()
    }

    func start() {
        let aboutViewController = AboutViewController()
        self.rootViewController.viewControllers = [aboutViewController]
    }
}
