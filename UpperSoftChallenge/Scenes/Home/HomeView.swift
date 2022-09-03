//
//  HomeView.swift
//  UpperSoftChallenge
//
//  Created by Luiz Carrion on 03/09/22.
//

import UIKit

class HomeView: BaseView {
	lazy var activity: UIActivityIndicatorView = {
		let activity = UIActivityIndicatorView()
		activity.hidesWhenStopped = true
		activity.startAnimating()
		return activity
	}()
	lazy var tableView: UITableView = {
		let tableView = UITableView()
		tableView.translatesAutoresizingMaskIntoConstraints = false
		tableView.register(HomeTableViewCell.self, forCellReuseIdentifier: String(describing: HomeTableViewCell.self))
		tableView.backgroundView = activity
		return tableView
	}()
}
