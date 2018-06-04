//
//  CharacterCell.swift
//  ZeldaCharacters
//
//  Created by Jesse Tellez on 6/4/18.
//  Copyright © 2018 Jesse. All rights reserved.
//

import UIKit

class CharacterCell: UITableViewCell {

    @IBOutlet weak var characterImage: UIImageView!
    @IBOutlet weak var characterName: UILabel!
    @IBOutlet weak var characterDescription: UITextView!
    
    func configure(withCharacter character: Character!) {
        self.characterName.text = character.name
        self.characterDescription.text = character.desc
        self.characterImage.image = character.image
    }

}
