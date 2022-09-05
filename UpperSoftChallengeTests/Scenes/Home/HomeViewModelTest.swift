//
//  HomeViewModelTest.swift
//  UpperSoftChallengeTests
//
//  Created by Luiz Carrion on 04/09/22.
//

import Foundation
import XCTest
@testable import UpperSoftChallenge

class HomeViewModelTests: XCTest {
	var sut: HomeViewModel!
	var service: ServiceMock!
	var navigation: HomeViewNavigationDelegateMock!
	
	override func setUp() {
		service = ServiceMock()
		navigation = HomeViewNavigationDelegateMock()
		sut = HomeViewModel(service: service, navigation: navigation)
	}
	
	override func tearDown() {
		// Put teardown code here. This method is called after the invocation of each test method in the class.
	}
	
	func testLoadDataNotNil() {
		sut.loadData()
		XCTAssertNotNil(sut.model)
	}
}
