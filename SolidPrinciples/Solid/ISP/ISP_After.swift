//
//  ISP_After.swift
//  SolidPrinciples
//
//  Created by Ali Aghamirbabaei on 2/18/22.
//

import Foundation

fileprivate protocol Workable {
    func work()
}

fileprivate protocol Feedable {
    func eat()
}

fileprivate class Human: Workable, Feedable {
    func work() {
        print("working...")
    }
    
    func eat() {
        print("eating...")
    }
}

fileprivate class Robot: Workable {
    func work() {
        print("working...")
    }
}

fileprivate func example() {
    let human = Human()
    human.work() // prints "working..."
    human.eat() // prints "eating..."
    
    let robot = Robot()
    robot.work() // prints "working..."
}
