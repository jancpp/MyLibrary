//
//  File.swift
//  
//
//  Created by Jan Polzer on 6/15/20.
//

public func ~= <Value> (
    pattern: (Value) -> Bool,
    value: Value
) -> Bool {
    pattern(value)
}

