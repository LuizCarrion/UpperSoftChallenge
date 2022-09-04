//
//  DetailsViewModel.swift
//  UpperSoftChallenge
//
//  Created by Luiz Carrion on 04/09/22.
//

import Foundation
import UIKit

protocol DetailsViewModelProtocol {
	var model: Cat { get }
}

struct DetailsViewModel: DetailsViewModelProtocol {
	let model: Cat
	
	init(model: Cat) {
		self.model = model
	}
}
