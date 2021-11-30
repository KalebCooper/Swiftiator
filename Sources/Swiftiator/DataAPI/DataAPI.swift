//
//  DataAPI.swift
//  
//
//  Created by Kaleb Cooper on 9/3/21.
//

import Foundation

public protocol DataAPI {
    associatedtype API: DataAPI
    static var shared: API { get }
}

public protocol DataAPIRetrievable: DataAPI {
    associatedtype RequestEndpoint: DataAPIRequestEndpoint
    func get<Response: DataModelable>(_ endpoint: RequestEndpoint, _ completion: @escaping (Response?) -> ())
}
public protocol DataAPIMutable: DataAPI {
    associatedtype MutationEndpoint: DataAPIMutationEndpoint
    func mutate<Response: DataModelable>(_ endpoint: MutationEndpoint, _ completion: @escaping (Response?) -> ())
}
