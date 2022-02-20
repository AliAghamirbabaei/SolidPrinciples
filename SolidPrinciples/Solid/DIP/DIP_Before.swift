//
//  DIP_Before.swift
//  SolidPrinciples
//
//  Created by Ali Aghamirbabaei on 2/20/22.
//

import Foundation

fileprivate struct Employee {
    func work() {
        print("working...")
    }
}

fileprivate struct Company {
    var employees: [Employee]
    
    func manage() {
        employees.forEach{ employees in
            employees.work()
        }
    }
}

fileprivate func example() {
    let employer = Company(employees: [Employee()])
    employer.manage()
}
