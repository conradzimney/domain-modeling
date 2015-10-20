//
//  main.swift
//  domain-modeling
//
//  Created by Conrad Zimney on 10/13/15.
//  Copyright © 2015 Conrad Zimney. All rights reserved.
//

import Foundation

/* * * * * * * * TESTING MONEY * * * * * * */

var money1 = Money(amount: 10.50, currency: "US")
var money2 = Money(amount: 34.23, currency: "CAN")
var money3 = Money(amount: 12.46, currency: "EUR")
var money4 = Money(amount: 67.00, currency: "GBP")

var badMoney = Money(amount: 50.00, currency: "BAD")

print("Money 1 has \(money1.amount) in \(money1.currency)")
print("Money 2 has \(money2.amount) in \(money2.currency)")
print("Money 3 has \(money3.amount) in \(money3.currency)")
print("Money 4 has \(money4.amount) in \(money4.currency)")

print("Adding 10.0 of different currencies to each money:")
money1.add(10.0, addedCurrency: "CAN")
money2.add(10.0, addedCurrency: "EUR")
money3.add(10.0, addedCurrency: "GBP")
money4.add(10.0, addedCurrency: "US")

print("Money 1 now has \(money1.amount) in \(money1.currency)")
print("Money 2 now has \(money2.amount) in \(money2.currency)")
print("Money 3 now has \(money3.amount) in \(money3.currency)")
print("Money 4 now has \(money4.amount) in \(money4.currency)")

print("Subtracting 5.0 of different currencies to each money:")
money1.subtract(5.0, subtractedCurrency: "EUR")
money2.subtract(5.0, subtractedCurrency: "GBP")
money3.subtract(5.0, subtractedCurrency: "US")
money4.subtract(5.0, subtractedCurrency: "CAN")

print("Money 1 now has \(money1.amount) in \(money1.currency)")
print("Money 2 now has \(money2.amount) in \(money2.currency)")
print("Money 3 now has \(money3.amount) in \(money3.currency)")
print("Money 4 now has \(money4.amount) in \(money4.currency)")
print("")

/* * * * * * * * TESTING JOB * * * * * * */

var job = Job(title: "IT Guy", salary: 50.0, hourly : true)
print("Job is \(job.title) and makes \(job.salary) per hour, or \(job.calculateIncome(2000)) in 2000 hours.")
job.raise(0.08)
print("After an 8% raise, the job makes \(job.calculateIncome(2000)) in 2000 hours.")
print("")

/* * * * * * * * TESTING PERSON * * * * * * */

var bryan = Person(firstName: "Bryan", lastName: "Gula", age: 22, job: Job(title: "TA", salary: 15.0, hourly : true),
    spouse : Person(firstName: "Swift", lastName: "Swiftly" , age: 1))
print("This is a peron in string form: \n\(bryan.toString())")
print("This is what happens when you try to create a Person with a job who is younger than 16:")
var youngerPerson = Person(firstName: "Too", lastName: "Young", age: 15, job: Job(title: "Blah", salary: 1.0, hourly : true))
print("This is what happens when you try to create a Person with a spouse who is younger than 18:")
var youngPerson = Person(firstName: "Too", lastName: "Young", age: 15, spouse : Person(firstName: "Too", lastName: "Young", age: 30))
print("")

/* * * * * * * * TESTING FAMILY * * * * * * */

var person1 = Person(firstName: "Dave", lastName: "Smith", age: 21, job: job)
var person2 = Person(firstName: "Lisa", lastName: "Smith", age: 23, job: Job(title: "Mom", salary: 30.0, hourly : true))
var person3 = Person(firstName: "Billy", lastName: "Smith", age: 5)
var members = [person1, person2, person3]
var family = Family(members: members)

print("The Smith's household income is \(family.houseHoldIncome())")
print("Members of the family are:")
for member in family.members {
    print("\(member.firstName) \(member.lastName)")
}
family.haveChild("Jane", lastName: "Smith")
print("After having a child, members of the family are now:")
for member in family.members {
    print("\(member.firstName) \(member.lastName)")
}
print(family.description)
print("What happens when you create a family where no one is at least 21?")
family = Family(members: [person3])
print("")

/* * * * * * * * * * * * * * * * * * * * * * * * * * */
/* * * * * * TESTING NEW FUNCTIONALITIES * * * * * * */
/* * * * * * * * * * * * * * * * * * * * * * * * * * */

print("Testing Tuesday (10/20/15) additions: ")
print("")

/* * * * * * * * TESTING CustomStringConvertible Implementation * * * * * * */

print("Testing CustomStringConvertible implementation:")
print(money1.description)
print(job.description)
print(bryan.description)
print(family.description)
print("")

/* * * * * * * * TESTING Mathematics Protocol * * * * * * */

print("Testing Mathematics protocol implementation:")

print("Money 1 has \(money1.amount) in \(money1.currency)")
print("Money 2 has \(money2.amount) in \(money2.currency)")
print("Money 3 has \(money3.amount) in \(money3.currency)")
print("Money 4 has \(money4.amount) in \(money4.currency)")

print("Adding Money objects to each other:")
money1.add(money2)
money2.add(money3)
money3.add(money4)
money4.add(money1)

print("Money 1 now has \(money1.amount) in \(money1.currency)")
print("Money 2 now has \(money2.amount) in \(money2.currency)")
print("Money 3 now has \(money3.amount) in \(money3.currency)")
print("Money 4 now has \(money4.amount) in \(money4.currency)")

print("Subtracting Money objects from each other:")
money1.subtract(money2)
money2.subtract(money3)
money3.subtract(money4)
money4.subtract(money1)

print("Money 1 now has \(money1.amount) in \(money1.currency)")
print("Money 2 now has \(money2.amount) in \(money2.currency)")
print("Money 3 now has \(money3.amount) in \(money3.currency)")
print("Money 4 now has \(money4.amount) in \(money4.currency)")
print("")

/* * * * * * * * TESTING Double Extension for Money * * * * * * */

print("Creating Doubles and calling their newly implemented methods: ")
var d1 : Double = 10.0
var d2 : Double = 10.0
var d3 : Double = 10.0
var d4 : Double = 10.0

var m1 : Money = d1.USD
var m2 : Money = d2.CAN
var m3 : Money = d3.EUR
var m4 : Money = d4.GBP

print("\(m1)")
print("\(m2)")
print("\(m3)")
print("\(m4)")




