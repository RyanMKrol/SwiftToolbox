//
//  Result.swift
//  SwiftToolbox
//
//  Created by Ryan Krol on 19/12/2018.
//
//  TV: Peep Show - Season 1 - Episode 3

import Foundation

public enum Result<T> {
    case success(T), failure(Error)
}

extension Result {

    // Construct a .Success if the expression returns a value or a .Failure if it throws
    init(throwingExpr: () throws -> T) {
        do {
            let value = try throwingExpr()
            self = Result.success(value)
        } catch {
            self = Result.failure(error)
        }
    }
}
