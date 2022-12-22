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
