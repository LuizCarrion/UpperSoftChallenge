//
//  BaseViewController.swift
//  UpperSoftChallenge
//
//  Created by Luiz Carrion on 02/09/22.
//

import UIKit

protocol HomeViewControllerDelegate: AnyObject {
	func updateTableView()
}

class HomeViewController: UIViewController {
	
	lazy var baseView: HomeView = HomeView()
	var viewModel: HomeViewModelProtocol
	
	init(viewModel: HomeViewModelProtocol = HomeViewModel()) {
		self.viewModel = viewModel
		super.init(nibName: nil, bundle: nil)
	}
	
	required init?(coder: NSCoder) {
		self.viewModel = HomeViewModel()
		super.init(coder: coder)
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		view = baseView
		setup()
		viewModel.loadData()
	}
	
	func setup() {
		viewModel.delegate = self
		baseView.tableView.dataSource = self
		baseView.tableView.delegate = self
		
		title = "List of Cats"
	}
}

extension HomeViewController: UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return viewModel.model.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		guard let cell = baseView.tableView.dequeueReusableCell(withIdentifier: String(describing: HomeTableViewCell.self),
																														for: indexPath) as? HomeTableViewCell
		else { return UITableViewCell() }
		
		cell.configure(text: viewModel.model[indexPath.row].name ?? "")
		
		return cell
	}
}

extension HomeViewController: UITableViewDelegate {
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		self.viewModel.navigate(index: indexPath.row)
	}
}

extension HomeViewController: HomeViewControllerDelegate {
	func updateTableView() {
		DispatchQueue.main.async {
			self.baseView.activity.stopAnimating()
			self.baseView.tableView.reloadData()
		}
	}
}
