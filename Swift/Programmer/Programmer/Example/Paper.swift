//
//  Paper.swift
//  Programmer
//
//  Created by tskim on 19/10/2019.
//  Copyright © 2019 assin. All rights reserved.
//

import Foundation

class Paper {
    private let isClient: Bool

    public init(isClient: Bool) {
        self.isClient = isClient
    }
    
    let library = Library(name: "vueJS")
    let language = Language(name: "kotlinJS")
    var programmer: HasProgrammer?
    let server = Server(name: "test")
    let backEndLanguage = Language(name: "java")
    let frontEndLanguage = Language(name: "kotlinJS")
    
    private var backEndProgrammer: HasProgrammer?
    private var frontEndProgrammer: HasProgrammer?
    
    func setBackEndProgrammer(_ p: HasProgrammer) {
        if isClient {
            self.backEndProgrammer = p
        }
    }
    func setFrontEndProgrammer(_ p: HasProgrammer) {
        if isClient {
            self.frontEndProgrammer = p
        }
    }
    func setProgrammer(_ p: HasProgrammer) {
        if isClient {
            self.programmer = p
        }
    }
}
