//
//  Money.swift
//  domain-modeling
//
//  Created by Conrad Zimney on 10/13/15.
//  Copyright © 2015 Conrad Zimney. All rights reserved.
//

import Foundation

class Money : CustomStringConvertible, Mathematics {
    
    // Properties
    var amount : Double
    var currency : String
    var description : String
    
    // Initializer
    init(amount : Double, currency : String) {
        self.amount = amount
        self.currency = currency
        self.description = currency + "\(amount)"
    }
    
    // Methods
    func convert(newCurrency : String) {
        if (newCurrency == "US" || newCurrency == "CAN" || newCurrency == "EUR" || newCurrency == "GBP") {
            if currency == "US" {
                if newCurrency == "US" {
                    return
                } else if newCurrency == "CAN" {
                    amount = amount * 1.25
                    currency = newCurrency
                } else if newCurrency == "EUR" {
                    amount = amount * 1.5
                } else if newCurrency == "GBP" {
                    amount = amount * 0.5
                }
            } else if currency == "CAN" {
                if newCurrency == "US" {
                    amount = amount / 1.25
                } else if newCurrency == "CAN" {
                    return
                } else if newCurrency == "EUR" {
                    amount = amount * 0.83333333
                } else if newCurrency == "GBP" {
                    amount = amount * 2.5
                }
            } else if currency == "EUR" {
                if newCurrency == "US" {
                    amount = amount / 1.5
                } else if newCurrency == "CAN" {
                    amount = amount * 1.2
                } else if newCurrency == "EUR" {
                    return
                } else if newCurrency == "GBP" {
                    amount = amount * 3
                }
            } else if currency == "GBP" {
                if newCurrency == "US" {
                    amount = amount / 0.5
                } else if newCurrency == "CAN" {
                    amount = amount * 0.4
                } else if newCurrency == "EUR" {
                    amount = amount * 0.33333333
                } else if newCurrency == "GBP" {
                    return
                }
            }
            currency = newCurrency
        } else {
            print("Please enter a valid currency: US, CAN, GBP or EUR")
        }
    }
    
    func add(amount : Double, addedCurrency : String) {
        let toAdd = Money(amount: amount, currency: addedCurrency)
        toAdd.convert(self.currency)
        self.amount += toAdd.amount
    }
    
    func subtract(amount : Double, subtractedCurrency : String) {
        let toSub = Money(amount: amount, currency: subtractedCurrency)
        toSub.convert(self.currency)
        self.amount -= toSub.amount
    }
    
    func add(other: Money) {
        add(other.amount, addedCurrency: other.currency)
    }
    
    func subtract(other: Money) {
        subtract(other.amount, subtractedCurrency: other.currency)
    }
    
}