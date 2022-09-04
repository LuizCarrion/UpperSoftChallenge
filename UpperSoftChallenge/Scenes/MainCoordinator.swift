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
	let service: DefaultNetworkService = DefaultNetworkService()
	
	init(navigationController: UINavigationController) {
		self.navigationController = navigationController
	}
	
	func start() {
		let viewModel = HomeViewModel(service: service,
																	navigation: self)
		let viewController = HomeViewController(viewModel: viewModel)
		navigationController.pushViewController(viewController, animated: false)
	}
}

extension MainCoordinator: HomeViewNavigationDelegate {
	func navigateToDetails(model: Cat) {
		let viewModel = DetailsViewModel(model: model)
		let viewController = DetailsViewController(viewModel: viewModel)
		navigationController.pushViewController(viewController, animated: true)
	}
}
