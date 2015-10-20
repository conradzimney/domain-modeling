//
//  Job.swift
//  domain-modeling
//
//  Created by Conrad Zimney on 10/13/15.
//  Copyright © 2015 Conrad Zimney. All rights reserved.
//

import Foundation

class Job : CustomStringConvertible{
    
    // Properties
    var title : String
    var salary : Double
    var hourly : Bool
    var description : String
    
    // Initializer
    init(title : String, salary : Double, hourly : Bool) {
        self.title = title
        self.salary = salary
        self.hourly = hourly
        self.description = title + "\(salary)"
    }
    
    // Methods
    func calculateIncome(hours : Int?) -> Double {
        if hourly {
            return salary * Double(hours!)
        } else if hourly && hours != nil {
            print("Please enter number of hours worked for hourly salary. Function will now return zero.")
            return 0.0
        } else {
            return salary
        }
    }
    
    func raise(percentRaise : Double) {
        salary += salary * percentRaise
    }
    
}