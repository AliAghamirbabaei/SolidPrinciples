//
//  ISP_Before.swift
//  SolidPrinciples
//
//  Created by Ali Aghamirbabaei on 2/18/22.
//

import Foundation

fileprivate protocol Worker {
    func work()
    func eat()
}

fileprivate class Human: Worker {
    func work() {
        print("working...")
    }
    
    func eat() {
        print("eating...")
    }
}

fileprivate class Robot: Worker {
    func work() {
        print("working...")
    }
    
    func eat() {
        fatalError("Robot dose not eat!")
    }
}

fileprivate func example() {
    let human = Human()
    human.work() // prints "working..."
    human.eat() // prints "eating..."
    
    let robot = Robot()
    robot.work() // prints "working..."
    robot.eat() // fatalError!
}
