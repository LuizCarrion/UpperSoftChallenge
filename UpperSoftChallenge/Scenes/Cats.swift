//
//  HomeModel.swift
//  UpperSoftChallenge
//
//  Created by Luiz Carrion on 04/09/22.
//

import Foundation

typealias Cats = [Cat]

// MARK: - Cat

struct Cat: Decodable {
	let weight: Weight?
	let id: String?
	let name: String?
	let cfaUrl: String?
	let vetstreetUrl: String?
	let vcahospitalsUrl: String?
	let temperament: String?
	let origin: String?
	let countryCodes: String?
	let countryCode: String?
	let catDescription: String?
	let lifeSpan: String?
	let indoor: Int?
	let lap: Int?
	let altNames: String?
	let adaptability: Int?
	let affectionLevel: Int?
	let childFriendly: Int?
	let dogFriendly: Int?
	let energyLevel: Int?
	let grooming: Int?
	let healthIssues: Int?
	let intelligence: Int?
	let sheddingLevel: Int?
	let socialNeeds: Int?
	let strangerFriendly: Int?
	let vocalisation: Int?
	let experimental: Int?
	let hairless: Int?
	let natural: Int?
	let rare: Int?
	let rex: Int?
	let suppressedTail: Int?
	let shortLegs: Int?
	let wikipediaUrl: String?
	let hypoallergenic: Int?
	let referenceImageId: String?
	let image: Image?
}

// MARK: - Image

struct Image: Decodable {
	let id: String?
	let width: Int?
	let height: Int?
	let url: String?
}

// MARK: - Weight

struct Weight: Decodable {
	let imperial: String?
	let metric: String?
}

