//
//  SRP-After.swift
//  SolidPrinciples
//
//  Created by Ali Aghamirbabaei on 2/17/22.
//

import Foundation

fileprivate class DataHandler {
    let apiHandler: APIHandler
    let parseHandler: ParseHandler
    let storageHandler: StorageHandler
    
    init(apiHandler: APIHandler, parseHandler: ParseHandler, storageHandler: StorageHandler) {
        self.apiHandler = apiHandler
        self.parseHandler = parseHandler
        self.storageHandler = storageHandler
    }
    
    func handle() {
        let data = apiHandler.loadData()
        let model = parseHandler.parse(data: data)
        storageHandler.save(model: model)
    }
}


fileprivate class APIHandler {
    
    func loadData() -> Data {
        return Data()
    }
}

fileprivate class ParseHandler {
    func parse(data: Data) -> Any {
        return ""
    }
}

fileprivate class StorageHandler {
    func save(model: Any) {
        // Save here
    }
}
