//
//  Family.swift
//  domain-modeling
//
//  Created by Conrad Zimney on 10/13/15.
//  Copyright © 2015 Conrad Zimney. All rights reserved.
//

import Foundation

class Family {
    
    // Properties
    var members : [Person]
    var legal : Bool
    
    // Initializer
    init(members : Person...) {
        self.members = [Person]()
        self.legal = false
        var i : Int = 0
        for member in members {
            self.members[i] = member
            i++
            if member.age >= 21 {
                legal = true
            }
        }
    }
    
    // Methods
    func houseHoldIncome() -> Double {
        if legal {
            print("This family is not legal.")
            return 0.0
        }
        var sum = 0.0
        for member in members {
            sum += member.job!.calculateIncome(2000)
        }
        return sum
    }
    
    func haveChild() {
        members[members.count] = Person(firstName: "Baby", lastName: "Newborn", age: 0)
    }
    
}

