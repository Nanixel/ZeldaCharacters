//
//  ViewController.swift
//  ZeldaCharacters
//
//  Created by Jesse Tellez on 6/4/18.
//  Copyright © 2018 Jesse. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var characters: [Character] = []
    
    @IBOutlet weak var characterTableView: UITableView!

    @IBOutlet weak var disabledOverlay: UIView!
    
    @IBOutlet var modalView: UIView!
    @IBOutlet weak var modalImage: UIImageView!
    @IBOutlet weak var modalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.characterTableView.delegate = self
        self.characterTableView.dataSource = self
        self.disabledOverlay.isHidden = true
        
        Data.getCharacterData { (data) in
            self.characters = data
            self.characterTableView.reloadData()
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = characterTableView.dequeueReusableCell(withIdentifier: "characterCell", for: indexPath) as! CharacterCell
        cell.configure(withCharacter: characters[indexPath.row])
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let data = characters[indexPath.row]
        
        modalImage.image = data.image
        modalLabel.text = data.name
        modalView.center = self.view.center
        modalView.layer.cornerRadius = 10
        
        self.disabledOverlay.isHidden = false
        //Affine just meets to scale the image without warping
        //We are making it narrow and taller and then we are bouncing it back to its original form in the animation code below
        modalView.transform = CGAffineTransform(scaleX: 0.8, y: 1.2)
        
        self.view.addSubview(modalView)
        
        UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0, options: [], animations: {
            self.disabledOverlay.alpha = 0.8
            self.modalView.transform = .identity
        })
    }

    @IBAction func dismissModal(_ sender: Any) {
        self.disabledOverlay.isHidden = true
        self.modalView.removeFromSuperview()
    }
    
}

