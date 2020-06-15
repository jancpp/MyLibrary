//
//  Sequence.swift
//  
//
//  Created by Jan Polzer on 6/15/20.
//

import CoreGraphics

public extension Sequence {
    var first: Element? {
        first { _ in  true} // disregard integers and return true
    }
}

public extension Sequence where Element == Int { // AdditiveArithmetic = Ints, Doubles, ..., will give SegFault
    var sum: Element? {
        guard let first = first else {
            return nil
        }
        return dropFirst().reduce(first, +)
    }
}

public extension Sequence where Element == Double {
    var sum: Element? {
        guard let first = first else {
            return nil
        }
        return dropFirst().reduce(first, +)
    }
}

public extension Sequence where Element == CGFloat {
    var sum: Element? {
        guard let first = first else {
            return nil
        }
        return dropFirst().reduce(first, +)
    }
}
