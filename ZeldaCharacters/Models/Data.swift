//
//  Data.swift
//  ZeldaCharacters
//
//  Created by Jesse Tellez on 6/4/18.
//  Copyright © 2018 Jesse. All rights reserved.
//

import UIKit

class Data {
    
    static func getCharacterData(completion: @escaping ([Character]) -> Void) {
        
        print("Step 1")
        DispatchQueue.global(qos: .userInteractive).async {
            var data: [Character] = []
            let linkDescription = "Link is the name shared by the main protagonists of The Legend of Zelda series. There are many incarnations of Link, each possessing the Spirit of the Hero, with some of them being blood related as well. They are chosen by the Goddesses to protect the land from evil whenever deemed necessary. In the majority of Zelda games, their adventures take place within Hyrule, traveling through the land, collecting important items, and defeating a wide variety of enemies while trying to save both Princess Zelda and her kingdom from the clutches of Ganon, Vaati, or other villains."
            
            let darukDescription = "Daruk was the warrior Goron Champion, one of the appointed members tasked with piloting the Divine Beasts in the war against Calamity Ganon 100 years ago. He was the pilot of the Divine Beast Vah Rudania. He was described as being generally calm, but becomes wildly excitable in battle. He possessed the ability known as Daruk's Protection, a red crystal sphere barrier that can deflect any attack or incoming damage to the user. Daruk was ultimately killed when Calamity Ganon corrupted and seized control of the Divine Beasts, pitting him against a monstrosity known as Fireblight Ganon. His legacy is kept alive by the Goron people, who have a stone statue in his likeness overlooking Goron City."
            
            let miphaDescription = "Mipha is the Princess of the Zora, a friend of Link, and one of the Champions. She is described as being introverted and has a gift for healing. Mipha was in love with Link and made him Zora Armor before her death during the Great Calamity."
            
            let revaliDescription = "100 years prior to the events of Breath of the Wild, Revali was the Champion of the Rito tribe. He was known as the most skilled archer of all the Rito and could fire Arrows with the speed of a gale. Revali has the ability to create an impressive updraft that allows him to soar, later named Revali's Gale after him. His weapon was the Great Eagle Bow."
            
            let urbosaDescription = "Urbosa is a Gerudo Champion who pilots the Divine Beast Vah Naboris. She is capable of manipulating lightning using her technique, Urbosa's Fury. Urbosa battled with the Scimitar of the Seven and the Daybreaker shield. It is said that Urbosa's movements resembled a beautiful dance when using the Scimitar of the Seven. Urbosa cares for Princess Zelda like a sister with a strong core. According to the Gerudo child, Pearle, Urbosa once saved Gerudo Town from an evil ghost."
            
            let zeldaDescription = "Princess Zelda, sometimes shortened to just Zelda, is the eponymous name commonly given to the females born into the Royal Family of Hyrule in The Legend of Zelda series. With the exception of Link's Awakening, Majora's Mask, and Tri Force Heroes, an incarnation of Zelda or one of her alter egos has always been one of the central characters in the series. Each incarnation of Zelda has been shown at various ages depending upon which title they appear in. They have appeared as a child, a teenager and as a young adult; for example, the Princess Zelda in Twilight Princess is around 20 years of age."
            
            data.append(Character(image: UIImage(named: "Link.png"), name: "Link", desc: linkDescription))
            data.append(Character(image: #imageLiteral(resourceName: "Daruk.png"), name: "Daruk", desc: darukDescription))
            data.append(Character(image: #imageLiteral(resourceName: "Mipha.png"), name: "Mipha", desc: miphaDescription))
            data.append(Character(image: #imageLiteral(resourceName: "Revali.png"), name: "Revali", desc: revaliDescription))
            data.append(Character(image: #imageLiteral(resourceName: "Urbosa.png"), name: "Urbosa", desc: urbosaDescription))
            data.append(Character(image: #imageLiteral(resourceName: "Zelda.png"), name: "Zelda", desc: zeldaDescription))
            
            sleep(2)
            
            DispatchQueue.main.async {
                completion(data)
                print("Step 3")
            }
        }
        
        print("Step 2")
        
        //return data
    }
    
}
