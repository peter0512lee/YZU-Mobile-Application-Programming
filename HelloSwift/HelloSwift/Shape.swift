//
//  Shape.swift
//  HelloSwift
//
//  Created by 李杰穎 on 2020/10/24.
//

import Foundation

class Shape {
    var numberOfSides: Int
    var shapeName: String
    
    init(name: String, count: Int) {
        shapeName = name
        numberOfSides = count
    }
    
    func simpleDescription() -> String {
        return "This is \(shapeName) with \(numberOfSides) sides."
    }
    
}
