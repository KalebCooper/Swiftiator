//
//  ItemMediator.swift
//  
//
//  Created by Kaleb Cooper on 11/23/21.
//

import Foundation

public class ItemMediator: DataMediatorRequestable {

    public typealias API = FirebaseAPI
    public var api = FirebaseAPI.shared

    public typealias Mediator = ItemMediator
    public static var shared: Mediator = ItemMediator()
    private init() { }

    public func get<Mapper : DataMapper>(
        _ endpoint: FirebaseAPI.RequestEndpoint,
        using mapper: Mapper,
        _ completion: @escaping (Mapper.DomainModel?) -> ()
    )  {

        api.get(endpoint) { (model: Mapper.DataModel?) in

            guard let model = model else {
                completion(nil)
                return
            }

            let domain = mapper.getDomainModel(from: model)
            completion(domain)
        }
    }

}
