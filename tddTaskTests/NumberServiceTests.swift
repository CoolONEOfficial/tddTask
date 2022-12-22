//
//  NumberServiceTests.swift
//  tddTaskTests
//
//  Created by Nikolay Truhin on 22/12/22.
//

import XCTest
@testable import tddTask

final class NumberServiceTests: XCTestCase {

    var service: NumberServicing!
    
    override func setUpWithError() throws {
        //service = NumberService()
    }

    override func tearDownWithError() throws {
        service = nil
    }

    func test_countOfNums_1234() throws {
        // Given
        let num = 1234
        
        // When
        let res = service.countOfNums(of: num)
        
        // Then
        XCTAssertEqual(res, 4)
    }
    
    func test_countOfNums_12() throws {
        // Given
        let num = 12
        
        // When
        let res = service.countOfNums(of: num)
        
        // Then
        XCTAssertEqual(res, 2)
    }

    func test_getString_12() throws {
        // Given
        let num = 12
        
        // When
        let res = service.getString(of: num)
        
        // Then
        XCTAssertEqual(res, "12")
    }
    
    func test_getString_1234() throws {
        // Given
        let num = 1234
        
        // When
        let res = service.getString(of: num)
        
        // Then
        XCTAssertEqual(res, "1234")
    }
    
    func test_getNumberInt_12() throws {
        // Given
        let num = 12
        
        // When
        let res: Int? = service.getNumber(at: 1, of: num)
        
        // Then
        XCTAssertEqual(res, 2)
    }
    
    func test_getNumberInt_1234() throws {
        // Given
        let num = 1234
        
        // When
        let res: Int? = service.getNumber(at: 3, of: num)
        
        // Then
        XCTAssertEqual(res, 4)
    }
    
    func test_getNumberString_12() throws {
        // Given
        let num = 12
        
        // When
        let res: String? = service.getNumber(at: 1, of: num)
        
        // Then
        XCTAssertEqual(res, "2")
    }
    
    func test_getNumberString_1234() throws {
        // Given
        let num = 1234
        
        // When
        let res: String? = service.getNumber(at: 3, of: num)
        
        // Then
        XCTAssertEqual(res, "4")
    }

}
