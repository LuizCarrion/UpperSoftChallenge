//
//  BaseViewController.swift
//  UpperSoftChallenge
//
//  Created by Luiz Carrion on 02/09/22.
//

import UIKit

class HomeViewController: UIViewController {
	
	let testView: UIView
	
	init() {
		testView = UIView()
		super.init(nibName: nil, bundle: nil)
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}

}
