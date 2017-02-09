//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Thomas Carlson on 7/02/2017.
//  Copyright © 2017 Everpuppy. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var DefinitionLabel: UILabel!
    
    var emoji = "No Emoji"
    
    @IBOutlet weak var EmojiPic: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        EmojiPic.text = emoji
        
        if emoji == "😀" {
        
        DefinitionLabel.text = "This is a smiley face"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
