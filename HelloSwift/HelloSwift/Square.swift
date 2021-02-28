//
//  Square.swift
//  HelloSwift
//
//  Created by 李杰穎 on 2020/10/24.
//

import Foundation

class Square: Shape {
    var sideLength: Double
    
    init(length: Double, squareName: String) {
        sideLength = length
        super.init(name: squareName, count: 4)
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "This square \(shapeName) with side of length \(sideLength), the area is \(self.area())"
    }
}
