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
//        songs.post(create)
//        songs.post(create)
    }
  
    
    func index(req: Request) throws -> EventLoopFuture<[Song]> {
        return Song.query(on: req.db).all()
    }
    func create(req: Request) throws -> EventLoopFuture<HTTPStatus> {
        let song = try req.content.decode(Song.self)
        return song.save(on: req.db).transform(to: .ok)
    }

}
