//
//  NumberService.swift
//  tddTask
//
//  Created by Nikolay Truhin on 22/12/22.
//

import Foundation

protocol NumberServicing {
    func countOfNums(of num: Int) -> Int
    func getNumber(at index: Int, of num: Int) -> Int?
    func getNumber(at index: Int, of num: Int) -> String?
    func getString(of num: Int) -> String
}

class NumberService: NumberServicing {
    func countOfNums(of num: Int) -> Int {
        String(num).count
    }
    
    func getNumber(at index: Int, of num: Int) -> Int? {
        let nums = Array(String(num)).map { Int(String($0)) }
        guard nums.indices ~= index else { return nil }
        return nums[index]
    }
    
    func getNumber(at index: Int, of num: Int) -> String? {
        let nums = Array(String(num))
        guard nums.indices ~= index else { return nil }
        return .init(nums[index])
    }
    
    func getString(of num: Int) -> String {
        String(num)
    }
}
