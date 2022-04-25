import Fluent
import Vapor

func routes(_ app: Application) throws {
    app.get { req in
        return "It works!"
    }

    app.get("hello") { req -> String in
        return "Hello, world!"
    }
    app.post("goog"){ req -> String in
        
        return "Welcome from my API"
    }

//    try app.register(collection: TodoController())
}
