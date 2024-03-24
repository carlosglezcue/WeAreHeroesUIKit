//
//  SuperHeroesLogic.swift
//  WeAreHeroes
//
//  Created by carlos.gonzalez.local on 10/3/24.
//

import Foundation

final class SuperHeroesLogic {
    static let shared = SuperHeroesLogic()
    
    let interactor: DataInteractor
    
    var superHeores: [SuperHeroe]
    
    init(interactor: DataInteractor = SuperHeroeInteractor.shared) {
        self.interactor = interactor
        self.superHeores = (try? interactor.getSuperHeroes()) ?? []
    }
    
    func getSuperHeroes(indexPath: IndexPath) -> SuperHeroe {
        superHeores[indexPath.row]
    }
    
    func moveSuperHeroes(indexPath: IndexPath, to: IndexPath) {
        superHeores.swapAt(indexPath.row, to.row)
    }
}
