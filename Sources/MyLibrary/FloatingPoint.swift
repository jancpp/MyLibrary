//
//  File.swift
//  
//
//  Created by Jan Polzer on 6/12/20.
//

public extension FloatingPoint  {
    var isInteger: Bool {
        // compare rounded number to itself
        rounded() == self
    }
}
