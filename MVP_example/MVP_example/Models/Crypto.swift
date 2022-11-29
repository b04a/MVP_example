//
//  Crypto.swift
//  MVP_example
//
//  Created by Danil Bochkarev on 29.11.2022.
//

import Foundation

struct Crypto {
    var name : String
    var ticker : String
    var value : Int
}


extension Crypto {
    static var testData = [
        Crypto(name: "Bitcoin", ticker: "BTC", value: 55000),
        Crypto(name: "Etherium", ticker: "ETH", value: 1500),
        Crypto(name: "BinanceCoin", ticker: "BNB", value: 250)
    ]
}
