//
//  Job.swift
//  domain-modeling
//
//  Created by Conrad Zimney on 10/13/15.
//  Copyright © 2015 Conrad Zimney. All rights reserved.
//

import Foundation

class Job {
    
    // Properties
    var title : String
    var salary : Double
    
    // Initializer
    init(title : String, hourlySalary : Double) {
        self.title = title
        self.salary = hourlySalary
    }
    
    // Methods
    func calculateIncome(hours : Int) -> Double {
        return salary * Double(hours)
    }
    
    func raise(percentRaise : Double) {
        salary += salary * percentRaise
    }
    
}