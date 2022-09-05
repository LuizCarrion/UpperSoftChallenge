//
//  HomeViewControllerDelegateMock.swift
//  UpperSoftChallengeTests
//
//  Created by Luiz Carrion on 04/09/22.
//

import Foundation
@testable import UpperSoftChallenge

class HomeViewNavigationDelegateMock: HomeViewNavigationDelegate {
	var called = false
	
	func navigateToDetails(model: Cat) {
		called = true
	}
}

class HomeViewControllerDelegateMock: HomeViewControllerDelegate {
	var called = false
	
	func updateTableView() {
		called = true
	}
}

class ServiceMock: NetworkService {
	typealias Response = Cat
	var called = false
	
	func request<Request>(_ request: Request, completion: @escaping (Result<Request.Response, Error>) -> Void) where Request : DataRequest {
		called = true
		completion(.success(ModelMock.cat as! Request.Response))
	}
}

class ModelMock {
	static let cat = Cat(weight: nil,
											 id: "idTest",
											 name: "testCat",
											 cfaUrl: "",
											 vetstreetUrl: "",
											 vcahospitalsUrl: "",
											 temperament: "",
											 origin: "",
											 countryCodes: "",
											 countryCode: "",
											 catDescription: "",
											 lifeSpan: "",
											 indoor: 0,
											 lap: 1,
											 altNames: "",
											 adaptability: 1,
											 affectionLevel: 1,
											 childFriendly: 1,
											 dogFriendly: 1,
											 energyLevel: 1,
											 grooming: 1,
											 healthIssues: 1,
											 intelligence: 1,
											 sheddingLevel: 1,
											 socialNeeds: 1,
											 strangerFriendly: 1,
											 vocalisation: 1,
											 experimental: 1,
											 hairless: 1,
											 natural: 1,
											 rare: 1,
											 rex: 1,
											 suppressedTail: 1,
											 shortLegs: 1,
											 wikipediaUrl: "",
											 hypoallergenic: 1,
											 referenceImageId: "",
											 image: nil)
}
