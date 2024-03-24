//
//  SuperHeroesTableViewController.swift
//  WeAreHeroes
//
//  Created by carlos.gonzalez.local on 11/3/24.
//

import UIKit

class SuperHeroesTableViewController: UITableViewController {

    let superHeroesLogic = SuperHeroesLogic.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
         self.clearsSelectionOnViewWillAppear = false
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return superHeroesLogic.superHeores.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "heroesCell", for: indexPath) as? CustomHeroesTableViewCell else { return UITableViewCell() }
        
        let heroes = superHeroesLogic.getSuperHeroes(indexPath: indexPath)
        cell.heroeName.text = heroes.nombreReal
        cell.heroeDescription.text = heroes.apodo
        cell.heroeImage.image = UIImage(named: heroes.imagen)
        
//        let cell = tableView.dequeueReusableCell(withIdentifier: "heroesCell", for: indexPath)
//        var content = UIListContentConfiguration.subtitleCell()
//
//        content.text = heroes.nombreReal
//        content.secondaryText = heroes.apodo
//        content.image = UIImage(named: heroes.imagen)
//        cell.contentConfiguration = content
        
        return cell
    }

    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }

    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        superHeroesLogic.moveSuperHeroes(indexPath: fromIndexPath, to: to)
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let selected = tableView.indexPathForSelectedRow,
              let destination = segue.destination as? SuperHeroeDetailsTableViewController else { return }
        destination.superHeroe = superHeroesLogic.getSuperHeroes(indexPath: selected)
    }
}
