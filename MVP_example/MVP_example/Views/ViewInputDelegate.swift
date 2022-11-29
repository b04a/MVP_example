//
//  ViewInputDelegate.swift
//  MVP_example
//
//  Created by Danil Bochkarev on 29.11.2022.
//

import Foundation

protocol ViewInputDelegate: AnyObject {
    func setupInitialState()
    func setupData(with testData: ([Crypto]))
    func displayData(i: Int)
}
