//
//  Song.swift
//  
//
//  Created by Ayman Omara on 25/04/2022.
//

import Fluent
import Vapor

final class Song: Model, Content{
    static let schema = "songs"
    @ID(key: .id)
    var id: UUID?
    @Field(key: "title")
    var title:String?
    init(){}
    init(id:UUID? = nil,title:String){
        self.id = id
        self.title = title
    }
}
