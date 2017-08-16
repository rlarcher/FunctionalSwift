//
//  FunctionalArrays.swift
//  FunctionalSwift
//
//  Created by Ryan Archer on 8/13/15.
//  Copyright (c) 2015 RyanArcher. All rights reserved.
//

import Foundation

class FunctionalArrays {
    
    static func tabulate<T>(_ size : Int, f : (Int) -> T) -> Array<T> {
        // create an array with specified size and T f(0), f(1), ... f(size - 1)
        var array : Array<T> = Array<T>()
        for i in 0...size-1 {
            array.append(f(i))
        }
        return array
    }
    
    static func mapreduce<T>(_ array : Array<T>, f : (T) -> T, r : (_ left : T, _ right : T) -> T, initial : T) -> T {
        // perform a map then a reduce
        let mapped = array.map(f)
        return mapped.reduce(initial, r)
    }
    
    static func singleton<T>(_ element : T) -> Array<T>{
        var array : Array<T> = Array<T>()
        array.append(element)
        return array
    }
}
