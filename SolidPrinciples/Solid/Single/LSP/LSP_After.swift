//
//  LSP_After.swift
//  SolidPrinciples
//
//  Created by Ali Aghamirbabaei on 2/18/22.
//

import Foundation

fileprivate protocol Polygon {
    func calculateArea() -> Float
}

fileprivate class Rectangle: Polygon {
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


fileprivate class Square: Polygon {
    var side: Float = 0
    
    func set(side: Float) {
        self.side = side
    }
    
    func calculateArea() -> Float {
        return pow(side, 2)
    }
}

fileprivate func printArea(of polygon: Polygon) {
    print(polygon.calculateArea())
}

fileprivate func example() {
    let rectangle = Rectangle()
    rectangle.set(width: 5)
    rectangle.set(height: 4)
    printArea(of: rectangle) // prints 20
    
    let square = Square()
    square.set(side: 4)
    printArea(of: square) // prints 16
}
