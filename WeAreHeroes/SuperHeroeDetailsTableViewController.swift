//
//  SuperHeroeDetailsTableViewController.swift
//  WeAreHeroes
//
//  Created by carlos.gonzalez.local on 11/3/24.
//

import UIKit

class SuperHeroeDetailsTableViewController: UITableViewController {
    
    var superHeroe: SuperHeroe?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath) as? CustomHeroeDetailsTableViewCell else { return UITableViewCell() }
        
        if let superHeroe = superHeroe {
            cell.heroeName.text = superHeroe.nombreReal
            cell.heroeDescription.text = superHeroe.descripcion ?? superHeroe.historia
            cell.heroeImage.image = UIImage(named: superHeroe.imagen)
            cell.heroeNickname.text = superHeroe.apodo
//            let _ = superHeroe.power.map { power in
//                cell.heroePowers.text = power.rawValue
//            }
            cell.heroePowers.text = superHeroe.powerList
        }
        return cell
    }
}
