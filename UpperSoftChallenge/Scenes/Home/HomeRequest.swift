//
//  HomeWorker.swift
//  UpperSoftChallenge
//
//  Created by Luiz Carrion on 04/09/22.
//

import Foundation

class HomeRequest: DataRequest {
	typealias Response = Cats
	
	var url: String {
		return "https://api.thecatapi.com/v1/breeds"
	}
	
	var method: HTTPMethod {
		.get
	}
	
	var headers: [String : String] {
		return ["x-api-key" : ApiKey.key]
	}
	
	func decode(_ data: Data) throws -> Cats {
		let decoder = JSONDecoder()
		decoder.keyDecodingStrategy = .convertFromSnakeCase
		let dateFormatter = DateFormatter()
		dateFormatter.dateFormat = "yyyy-mm-dd"
		decoder.dateDecodingStrategy = .formatted(dateFormatter)
		
		let response = try decoder.decode(Cats.self, from: data)
		return response
	}
}
