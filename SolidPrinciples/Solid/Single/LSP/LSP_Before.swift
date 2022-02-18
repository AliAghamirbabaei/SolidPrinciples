//
//  LSP_Before.swift
//  SolidPrinciples
//
//  Created by Ali Aghamirbabaei on 2/18/22.
//

import Foundation

fileprivate class Rectangle {
    var width: Float = 0
    var height: Float = 0
    
    func set(width: Float) {
        self.width = width
    }
    
    func set(height: Float) {
        self.height = height
    }
    
    func calculateArea() -> Float {
        return width * height
    }
}

fileprivate class Square: Rectangle {
    override func set(width: Float) {
        self.width = width
        self.height = height
    }
    
    override func set(height: Float) {
        self.width = width
        self.height = height
    }
}

// Breaks the LSP
fileprivate func setSizeAndPrintArea(of rectangle: Rectangle) {
    rectangle.set(width: 5)
    rectangle.set(height: 4)
    print(rectangle.calculateArea())
}

fileprivate func example() {
    let rectangle = Rectangle()
    setSizeAndPrintArea(of: rectangle) // prints 20
    
    let square = Square()
    setSizeAndPrintArea(of: square) // prints 16
}
