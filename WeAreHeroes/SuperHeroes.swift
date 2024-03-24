//
//  SuperHeroModel.swift
//  WeAreHeroes
//
//  Created by carlos.gonzalez.local on 10/3/24.
//

import Foundation

struct SuperHeroe: Codable {
    let id: String
    let nombreReal: String
    let apodo: String
    let descripcion: String?
    let historia: String?
    let edad: Int
    let poderes: [String]
    let imagen: String
}

extension SuperHeroe {
    var power: [Poderes] {
        poderes.compactMap { Poderes(rawValue: $0) }
    }
    
    var powerList: String {
        poderes.formatted(.list(type: .and)).replacingOccurrences(of: "and", with: "y")
    }
}
