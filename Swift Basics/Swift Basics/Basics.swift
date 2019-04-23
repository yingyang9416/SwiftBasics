//
//  Basics.swift
//  Swift Basics
//
//  Created by Ying Yang on 4/12/19.
//  Copyright © 2019 Ying Yang. All rights reserved.
//

import Foundation

class Basics {
    // Constant and variable names can contain almost any character, including Unicode characters:
    let π = 3.14159
    let 你好 = "你好世界"
    let 🐶🐮 = "dogcow"
    
    // string interpolation
    func printt(){
        print("The current value of friendlyWelcome is \(π)")
        // semicolons are required if:
        let cat = "🐱"; print(cat)
    }
    
    // multiple line comments:
    /* This is also a comment
     but is written over multiple lines. */
    
    // Integer bounds:
    func integerBounds(){
        let minValue = UInt8.min  // minValue is equal to 0, and is of type UInt8
        let maxValue = UInt8.max  // maxValue is equal to 255, and is of type UInt8
        let minValue2 = UInt16.min // 0
        let maxValue2 = UInt16.max // 65535
        let maxValue3 = UInt64.max // 18446744073709551615
        print(minValue)
        print(maxValue)
        print(minValue2)
        print(maxValue2)
        print(maxValue3)
        
        // Int:
        // On a 32-bit platform, Int is the same size as Int32.
        // On a 64-bit platform, Int is the same size as Int64.

    }
    
    // Tuples
    func tuples(){
        let http404Error = (404, "Not Found")
        // decompose the tuple:
        let (statusCode, statusMessage) = http404Error
        print("The status code is \(statusCode)")
        print("The status message is \(statusMessage)")
        // Or:
        print("The status code is \(http404Error.0)")
        print("The status message is \(http404Error.1)")
        
        // You can name the individual elements in a tuple when the tuple is defined
        let http200Status = (statusCode: 200, description: "OK")
        print("The status code is \(http200Status.statusCode)")
        print("The status message is \(http200Status.description)")
    }
    
    // Implicitly Unwrapped Optionals
    // an optional will always have a value, after that value is first set
    func implicitlyUnwrapped(){
        let assumedString: String! = "An implicitly unwrapped optional string."
        let implicitString: String = assumedString // no need for an exclamation mark
        print(implicitString)
    }
}
