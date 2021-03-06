//
//  CreateSongs.swift
//  
//
//  Created by ARG on 25/04/2022.
//

import Foundation
import Fluent
struct CreateSongs:Migration{
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        return database.schema("songs")
            .id()
            .field("title", .string, .required)
            .create()
    }
    
    func revert(on database: Database) -> EventLoopFuture<Void> {
        return database.schema("songs").delete()
    }
    
    
}
