//
//  SongsController.swift
//  
//
//  Created by Ayman Omara on 25/04/2022.
//

import Fluent
import Vapor

struct SongsController:RouteCollection{
    
    func boot(routes: RoutesBuilder) throws {
        let songs = routes.grouped("songs")
        songs.get(use: index)
    }
  
    
    func index(req: Request) throws -> EventLoopFuture<[Song]> {
        return Song.query(on: req.db).all()
    }
    

}
