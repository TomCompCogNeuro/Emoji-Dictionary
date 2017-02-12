//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Thomas Carlson on 7/02/2017.
//  Copyright © 2017 Everpuppy. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var EmojiCategory: UILabel!
    @IBOutlet weak var EMojiBirthYear: UILabel!
    @IBOutlet weak var DefinitionLabel: UILabel!
    
    var emoji = Emoji()
    
    @IBOutlet weak var EmojiPic: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        EmojiPic.text = emoji.string_emoji
        DefinitionLabel.text = emoji.definition
        EmojiCategory.text = "Category: \(emoji.category)"
        EMojiBirthYear.text  = "Creation Date: \(emoji.creation_year)"

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}


