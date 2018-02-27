//
//  SkillVC.swift
//  swoosh-app
//
//  Created by Krzysztof Langner on 27/02/2018.
//  Copyright © 2018 Krzysztof Langner. All rights reserved.
//

import UIKit

class SkillVC: UIViewController {
    
    var player: Player!

    override func viewDidLoad() {
        super.viewDidLoad()

        print(player.desiredLeague!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
