//
//  LeagueVC.swift
//  swoosh-app
//
//  Created by Krzysztof Langner on 27/02/2018.
//  Copyright © 2018 Krzysztof Langner. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    var player: Player!
    
    @IBOutlet weak var nextButton: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }

    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillSegue", sender: self)
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        onLeagueSelected("Mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        onLeagueSelected("Womens")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        onLeagueSelected("Co-ed")
    }
    
    func onLeagueSelected(_ league: String) {
        player.desiredLeague = league
        nextButton.isEnabled = true
    }
}
