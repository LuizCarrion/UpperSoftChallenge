//
//  HomeTableViewCell.swift
//  UpperSoftChallenge
//
//  Created by Luiz Carrion on 03/09/22.
//

import Foundation
import UIKit

class HomeTableViewCell: UITableViewCell {
	lazy var titleLabel: UILabel = {
		let label = UILabel()
		label.numberOfLines = 1
		label.textColor = .black
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	override func prepareForReuse() {
		titleLabel.text = nil
	}
	
	override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
		super.init(style: style, reuseIdentifier: reuseIdentifier)
		
		setup()
	}
	
	required init?(coder: NSCoder) {
		super.init(coder: coder)
		
		setup()
	}
	
	func configure(text: String) {
		titleLabel.text = text
	}
	
	func setup() {
		contentView.addSubview(titleLabel)
		setupConstraints()
	}
	
	func setupConstraints() {
		NSLayoutConstraint.activate([
			titleLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
			titleLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
		])
	}
}
