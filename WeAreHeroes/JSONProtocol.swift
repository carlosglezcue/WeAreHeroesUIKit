//
//  JSONProtocol.swift
//  WeAreHeroes
//
//  Created by carlos.gonzalez.local on 10/3/24.
//

import Foundation

protocol JSONProtocol {
    func getJSON<JSON>(url: URL, type: JSON.Type) throws -> JSON where JSON: Codable
}

extension JSONProtocol {
    func getJSON<JSON>(url: URL, type: JSON.Type) throws -> JSON where JSON: Codable {
        let data = try Data(contentsOf: url)
        return try JSONDecoder().decode(type, from: data)
    }
}
