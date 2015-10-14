//
//  main.swift
//  domain-modeling
//
//  Created by Conrad Zimney on 10/13/15.
//  Copyright © 2015 Conrad Zimney. All rights reserved.
//

import Foundation

class Money {
    
}

class Job {
    
}

class Person {
    var firstName : String
    var lastName : String
    var age : Int
    var job : Job?
    
    init(firstName : String, lastName : String, age : Int, job : Job) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.job = job
    }
}

class Family {
    
}
