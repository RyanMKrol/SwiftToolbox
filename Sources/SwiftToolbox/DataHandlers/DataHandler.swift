//
//  DataHandler.swift
//  SwiftToolbox
//
//  Created by Ryan Krol on 20/12/2018.
//
//  TV: Peep Show - Season 3 - Episode 1

import Foundation

public protocol DataHandler {
    associatedtype processedData

    var url: URL { get }
    var result: processedData? { get set }

    func parseData(data: Data) throws -> processedData
    func getData() throws -> processedData
}

public extension DataHandler {

    func getData() throws -> processedData {

        guard let result = self.result else {
            throw CommonErrors.NoData
        }

        return result
    }
}
