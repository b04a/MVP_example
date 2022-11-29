//
//  Presentor.swift
//  MVP_example
//
//  Created by Danil Bochkarev on 29.11.2022.
//

import Foundation

class Presentor {
    weak private var viewInputDelegate : ViewInputDelegate?
    var testData = Crypto.testData
    
    func setViewInputDelegate(viewInputDelegate: ViewInputDelegate?) {
        self.viewInputDelegate = viewInputDelegate
    }
    
    private func loadTestData() {
        self.viewInputDelegate?.setupData(with: self.testData)
    }
    
    private func random() {
        let r = Int.random(in: 0 ..< testData.count)
        self.viewInputDelegate?.displayData(i: r)
    }
}


extension Presentor: ViewOutputDelegate {
    
    func getRandomC() {
        random()
    }
    
    func getData() {
        self.loadTestData()
        self.viewInputDelegate?.setupInitialState()
    }
    
    func saveData() {
        
    }
}
