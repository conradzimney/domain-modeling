//
//  Family.swift
//  domain-modeling
//
//  Created by Conrad Zimney on 10/13/15.
//  Copyright © 2015 Conrad Zimney. All rights reserved.
//

import Foundation

class Family : CustomStringConvertible {
    
    // Properties
    var members : [Person]
    var legal : Bool
    var description : String
    
    // Initializer
    init(members : [Person]) {
        self.members = members
        self.legal = false
        for member in members {
            if member.age >= 21 {
                legal = true
            }
        }
        if !legal {
            print("This family is not legal.")
        }
        self.description = members.description
    }
    
    // Methods
    func houseHoldIncome() -> Double {
        if !legal {
            print("This family is not legal.")
            return 0.0
        }
        var sum = 0.0
        for member in members {
            if member.job != nil {
                sum += member.job!.calculateIncome(2000)
            }
        }
        return sum
    }
    
    func haveChild(firstName : String, lastName : String) {
        members.append(Person(firstName:  firstName, lastName: lastName, age: 0))
    }
    
}

