//
//  CustomHeroesTableViewCell.swift
//  WeAreHeroes
//
//  Created by carlos.gonzalez.local on 11/3/24.
//

import UIKit

class CustomHeroesTableViewCell: UITableViewCell {
    
    // MARK: - @IBOutlets
    
    @IBOutlet weak var heroeName: UILabel!
    @IBOutlet weak var heroeDescription: UILabel!
    @IBOutlet weak var heroeImage: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        heroeImage.layer.cornerRadius = 5.0
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    override func prepareForReuse() {
        heroeName.text = nil
        heroeDescription.text = nil
        heroeImage.image = nil
    }
}
