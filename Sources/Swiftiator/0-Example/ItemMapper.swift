//
//  ItemMapper.swift
//  
//
//  Created by Kaleb Cooper on 11/29/21.
//

import Foundation

public class ItemMapper: DataMapper {

    public typealias DomainModel = Item
    public typealias DataModel = ItemDTO

    public func getDomainModel(from model: ItemDTO) -> Item {
        return Item(id: model.id)
    }

}

public class ItemListMapper: DataMapper {

    public typealias DomainModel = [Item]
    public typealias DataModel = ItemDTO

    public func getDomainModel(from model: ItemDTO) -> [Item] {
        return [Item(id: model.id)]
    }

}
