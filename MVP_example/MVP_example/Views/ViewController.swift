//
//  ViewController.swift
//  MVP_example
//
//  Created by Danil Bochkarev on 29.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var tickerLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    
    
    @IBAction func buttonAction(_ sender: Any) {
        self.viewOutputDelegate?.getRandomC()
    }
    
    private var count = 0
    private var presenter = Presentor()
    private var testData : [Crypto] = []

    weak private var viewOutputDelegate : ViewOutputDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.setViewInputDelegate(viewInputDelegate: self)
        self.viewOutputDelegate = presenter
        self.viewOutputDelegate?.getData()
    }


}

extension ViewController: ViewInputDelegate {
    func setupInitialState() {
        displayData(i: count)
    }
    
    func setupData(with testData: ([Crypto])) {
        self.testData = testData
    }
    
    func displayData(i: Int) {
        if testData.count >= 0 && count <= (testData.count - 1) && count >= 0 {
            nameLabel.text = testData[i].name
            tickerLabel.text = testData[i].ticker
            valueLabel.text = String(testData[i].value)
        } else {
            print("sorry, no data ;(")
        }
    }
    
}
