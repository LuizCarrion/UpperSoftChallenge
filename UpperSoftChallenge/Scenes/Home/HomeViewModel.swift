//
//  HomeViewModel.swift
//  UpperSoftChallenge
//
//  Created by Luiz Carrion on 04/09/22.
//

import Foundation

protocol HomeViewNavigationDelegate: AnyObject {
	func navigateToDetails(model: Cat)
}

protocol HomeViewModelProtocol {
	func loadData()
	func navigate(index: Int)
	
	var delegate: HomeViewControllerDelegate? { get set }
	var model: Cats { get }
}

class HomeViewModel {
	var model: Cats = Cats()
	var service: NetworkService?
	weak var delegate: HomeViewControllerDelegate?
	weak var navigation: HomeViewNavigationDelegate?
	
	init(service: NetworkService? = nil,
			 navigation: HomeViewNavigationDelegate? = nil) {
		self.service = service
		self.navigation = navigation
	}
	
	deinit {
		service = nil
	}
}

extension HomeViewModel: HomeViewModelProtocol {
	func loadData() {
		service?.request(HomeRequest()) { [weak self] result in
			guard let self = self else { return }
			
			switch result {
				case .success(let response):
					self.model = response
					self.delegate?.updateTableView()
				case .failure(let error):
					print(error)
			}
		}
	}
	
	func navigate(index: Int) {
		navigation?.navigateToDetails(model: model[index])
	}
}
