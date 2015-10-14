//
//  Person.swift
//  domain-modeling
//
//  Created by Conrad Zimney on 10/13/15.
//  Copyright © 2015 Conrad Zimney. All rights reserved.
//

import Foundation

class Person {
    
    // Properties
    var firstName : String
    var lastName : String
    var age : Int
    var job : Job?
    var spouse : Person?
    
    // Initializer
    init(firstName : String, lastName : String, age : Int, job : Job? = nil, spouse : Person? = nil) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        if age >= 16 {
            self.job = job!
        } else {
            print("Must be at least 16 to have a job.")
        }
        if age >= 18 {
            self.spouse = spouse!
        } else {
            print("Must be at least 18 to have a spouse.")
        }
    }
    
    // Methods
    func toString() -> String {
        var toReturn : String = "Hello, my name is \(firstName) \(lastName). I am \(age) years old."
        if job != nil {
            toReturn += " I am a \(job!.title)."
        }
        if spouse != nil {
            toReturn += " \(spouse!.firstName) is my spouse."
        }
        return toReturn
    }
}