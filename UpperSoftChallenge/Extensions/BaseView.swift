//
//  ViewCodable.swift
//  UpperSoftChallenge
//
//  Created by Luiz Carrion on 03/09/22.
//

import UIKit

open class BaseView: UIView {
	
	override public init(frame: CGRect) {
		
		super.init(frame: frame)
		
		setup()
		setupConstraints()
	}
	
	required public init?(coder aDecoder: NSCoder) {
		
		super.init(coder: aDecoder)
	}

	open func setup() {}

	open func setupConstraints() {}
}
