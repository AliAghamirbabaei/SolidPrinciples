//
//  DIP_After.swift
//  SolidPrinciples
//
//  Created by Ali Aghamirbabaei on 2/20/22.
//

import Foundation

fileprivate protocol Workable {
    func work()
}

fileprivate struct Employee: Workable {
    func work() {
        print("Working...")
    }
}

fileprivate struct Company {
    var workables: [Workable]
    
    func manage() {
        workables.forEach{ workable in
            workable.work()
        }
    }
}

fileprivate func example() {
    let employer = Company(workables: [Employee()])
    employer.manage()
}
