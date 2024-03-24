//
//  CustomHeroeDetailsTableViewCell.swift
//  WeAreHeroes
//
//  Created by carlos.gonzalez.local on 11/3/24.
//

import UIKit

class CustomHeroeDetailsTableViewCell: UITableViewCell {
    
    // MARK: - @IBOutlet
    
    @IBOutlet weak var heroeImage: UIImageView!
    @IBOutlet weak var heroeName: UILabel!
    @IBOutlet weak var heroeDescription: UILabel!
    @IBOutlet weak var heroeNickname: UILabel!
    @IBOutlet var heroePowers: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        heroeImage.layer.cornerRadius = 10.0
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
