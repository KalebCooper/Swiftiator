//
//  FirebaseAPI.swift
//  
//
//  Created by Kaleb Cooper on 11/23/21.
//

import Foundation

public class FirebaseAPI: DataAPI {

    public typealias API = FirebaseAPI
    public static var shared: API = FirebaseAPI()

    public enum RequestEndpoint: DataAPIRequestEndpoint {
        case item(id: String)
        case allItems(userid: String)
    }

    public enum MutationEndpoint: DataAPIMutationEndpoint {
        case deleteItem(id: String, confirm: Bool)
    }
}

extension FirebaseAPI: DataAPIRetrievable {

    public func get<Response: DataModelable>(
        _ endpoint: RequestEndpoint,
        _ completion: @escaping (Response?) -> ()
    ) {

        switch endpoint {
        case .allItems:
            // Use API specific code to actually get the objects
            completion(nil)
        case .item:
            // Use API specific code to actually get the object
            completion(nil)
        }
    }
}
