//
//  HomeView.swift
//  UpperSoftChallenge
//
//  Created by Luiz Carrion on 03/09/22.
//

import UIKit

class HomeView: BaseView {
	lazy var tableView: UITableView = {
		let tableView = UITableView()
		tableView.translatesAutoresizingMaskIntoConstraints = false
		tableView.register(HomeTableViewCell.self, forCellReuseIdentifier: String(describing: HomeTableViewCell.self))
		tableView.rowHeight = 50
		tableView.backgroundView = activity
		tableView.separatorInset = .zero
		return tableView
	}()
	
	override func setup() {
		backgroundColor = .white
		addSubview(tableView)
	}
	
	override func setupConstraints() {
		NSLayoutConstraint.activate([
			tableView.topAnchor.constraint(equalTo: topAnchor),
			tableView.bottomAnchor.constraint(equalTo: bottomAnchor),
			tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
			tableView.trailingAnchor.constraint(equalTo: trailingAnchor)
		])
	}
}
