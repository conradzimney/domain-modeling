//
//  DoubleExtension.swift
//  domain-modeling
//
//  Created by Conrad Zimney on 10/19/15.
//  Copyright © 2015 Conrad Zimney. All rights reserved.
//

import Foundation

extension Double {
    
    var USD : Money { return Money(amount: self, currency: "US") }
    var CAN : Money { return Money(amount: self, currency: "CAN") }
    var EUR : Money { return Money(amount: self, currency: "EUR") }
    var GBP : Money { return Money(amount: self, currency: "GBP") }
    
}