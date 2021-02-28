//
//  main.swift
//  HelloSwift
//
//  Created by 李杰穎 on 2020/10/17.
//

import Foundation

var myShape = Shape(name: "Tri", count: 3)
print(myShape.simpleDescription())

let mySquare = Square(length: 5.2, squareName: "mySquare")
print(mySquare.simpleDescription())

let myCircle = Circle(r: 5.2, circleName: "myCircle")
print(myCircle.simpleDescription())
