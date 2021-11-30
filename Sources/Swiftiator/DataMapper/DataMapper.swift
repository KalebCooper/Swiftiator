//
//  File.swift
//  
//
//  Created by Kaleb Cooper on 11/29/21.
//

import Foundation

public protocol DataMapper {
    associatedtype DomainModel
    associatedtype DataModel: DataModelable

    func getDomainModel(from model: DataModel) -> DomainModel
}
