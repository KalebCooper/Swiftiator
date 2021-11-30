//
//  DataMediator.swift
//  
//
//  Created by Kaleb Cooper on 9/3/21.
//

import Foundation

public protocol DataMediator {
    associatedtype API: DataAPI
    var api: API { get }

    associatedtype Mediator: DataMediator
    static var shared: Mediator { get }
}

public protocol DataMediatorRequestable: DataMediator where API: DataAPIRetrievable {
    func get<M: DataMapper>(_ endpoint: API.RequestEndpoint, using mapper: M, _ completion: @escaping (M.DomainModel?) -> ()
    )
}

public protocol DataMediatorMutable: DataMediator where API: DataAPIMutable {
    func mutate<R>(_ endpoint: API.MutationEndpoint, _ completion: @escaping (R?) -> ())
}
