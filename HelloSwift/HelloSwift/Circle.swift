//
//  myCircle.swift
//  HelloSwift
//
//  Created by 李杰穎 on 2020/10/24.
//

import Foundation

class Circle: Shape {
    var radius: Double
    
    init(r: Double, circleName: String) {
        radius = r
        super.init(name: circleName, count: 0)
    }
    
    func area() -> Double {
        return .pi * radius * radius
    }
    
    override func simpleDescription() -> String {
        return "This circle \(shapeName) with radius \(radius), the area is \(self.area())"
    }
}
