//
//  Mathematics.swift
//  domain-modeling
//
//  Created by Conrad Zimney on 10/19/15.
//  Copyright © 2015 Conrad Zimney. All rights reserved.
//

import Foundation

protocol Mathematics {
    
    mutating func add(other: Money) -> Void
    mutating func subtract(other: Money) -> Void
    
}