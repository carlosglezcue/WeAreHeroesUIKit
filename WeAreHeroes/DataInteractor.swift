//
//  DataInteractor.swift
//  WeAreHeroes
//
//  Created by carlos.gonzalez.local on 10/3/24.
//

import Foundation

protocol DataInteractor {
    func getSuperHeroes() throws -> [SuperHeroe]
}

struct SuperHeroeInteractor: DataInteractor, JSONProtocol {
    static let shared = SuperHeroeInteractor()
    
    private init() { }
    
    func getSuperHeroes() throws -> [SuperHeroe] {
        guard let url = Bundle.main.url(forResource: "SuperHeroes", withExtension: "json") else { return [] }
        return try getJSON(url: url, type: [SuperHeroe].self)
    }
}
