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
    var hourlyOrYearly : String
    
    // Initializer
    init(title : String, salary : Double, hourlyOrYearly : String) {
        self.title = title
        self.salary = salary
        self.hourlyOrYearly = hourlyOrYearly
    }
    
    // Methods
    func calculateIncome(hours : Int) -> Double {
        if hourlyOrYearly == "hourly" {
            return salary * Double(hours)
        } else {
            return salary
        }
    }
    
    func raise(percentRaise : Double) {
        salary += salary * percentRaise
    }
    
}