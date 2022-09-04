//
//  DetailsView.swift
//  UpperSoftChallenge
//
//  Created by Luiz Carrion on 04/09/22.
//

import Foundation
import UIKit

class DetailsView: BaseView {
	lazy var imageView: UIImageView = {
		let imgView = UIImageView()
		imgView.translatesAutoresizingMaskIntoConstraints = false
		imgView.contentMode = .scaleAspectFit
		imgView.clipsToBounds = true
		return imgView
	}()
	lazy var titleLabel: UILabel = {
		let label = UILabel()
		label.numberOfLines = 1
		label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
		label.textColor = .black
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	lazy var textLabel: UILabel = {
		let label = UILabel()
		label.numberOfLines = 0
		label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
		label.textColor = .black
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	lazy var mainStackView: UIStackView = {
		let stack = UIStackView(arrangedSubviews: [imageView,
																							 titleLabel,
																							 textLabel])
		stack.translatesAutoresizingMaskIntoConstraints = false
		stack.alignment = .center
		stack.spacing = 20
		stack.axis = .vertical
		return stack
	}()
	
	override func setup() {
		backgroundColor = .white
		addSubview(mainStackView)
	}
	
	override func setupConstraints() {
		NSLayoutConstraint.activate([
			mainStackView.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor),
			mainStackView.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor),
			mainStackView.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor),
			
			imageView.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor),
			imageView.heightAnchor.constraint(equalToConstant: 200),
			imageView.widthAnchor.constraint(equalToConstant: 220)
		])
	}
}
