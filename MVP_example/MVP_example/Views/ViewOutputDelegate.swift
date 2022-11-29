//
//  ViewOutputDelegate.swift
//  MVP_example
//
//  Created by Danil Bochkarev on 29.11.2022.
//

import Foundation

protocol ViewOutputDelegate: AnyObject {
    func getData()
    func saveData()
    func getRandomC()
}
