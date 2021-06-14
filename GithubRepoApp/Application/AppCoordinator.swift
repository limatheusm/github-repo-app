//
//  AppCoordinator.swift
//  GithubRepoApp
//
//  Created by Matheus Lima on 02/05/21.
//

import Foundation
import UIKit

class AppCoordinator: Coordinator {
    var isCompleted: (() -> Void)?
    var childCoordinators = [Coordinator]()

    let window: UIWindow

    init(windowScene: UIWindowScene) {
        self.window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        self.window.windowScene = windowScene
    }

    func start() {
        self.showMainRoute()
    }

    func showMainRoute() {
        self.freeAllChildCoordinators()
        let coordinator = MainCoordinator(tabBarScenes: GithubTabBarScene.allCases)
        self.start(coordinator: coordinator)
        self.window.rootViewController = coordinator.rootViewController
        self.window.makeKeyAndVisible()
    }
}
