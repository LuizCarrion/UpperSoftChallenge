//
//  DetailsViewController.swift
//  UpperSoftChallenge
//
//  Created by Luiz Carrion on 04/09/22.
//

import UIKit

class DetailsViewController: UIViewController {
	
	lazy var baseView: DetailsView = DetailsView()
	var viewModel: DetailsViewModelProtocol
	
	init(viewModel: DetailsViewModelProtocol) {
		self.viewModel = viewModel
		super.init(nibName: nil, bundle: nil)
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		view = baseView
		setup()
	}
	
	func setup() {
		guard let url = viewModel.model.image?.url else { return }
		baseView.imageView.imageFromServerURL(url, placeHolder: nil)
		
		baseView.textLabel.text = viewModel.model.temperament
		baseView.titleLabel.text = viewModel.model.name
		
		title = "About"
	}
}
