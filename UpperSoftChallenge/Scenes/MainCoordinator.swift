//
//  MainRouter.swift
//  UpperSoftChallenge
//
//  Created by Luiz Carrion on 03/09/22.
//

import UIKit

protocol Coordinator {
	var childCoordinators: [Coordinator] { get set }
	var navigationController: UINavigationController { get set }
	
	func start()
}

class MainCoordinator: Coordinator {
	var childCoordinators = [Coordinator]()
	var navigationController: UINavigationController
	
	init(navigationController: UINavigationController) {
		self.navigationController = navigationController
	}
	
	func start() {
		let vc = HomeViewController()
		navigationController.pushViewController(vc, animated: false)
	}
}
