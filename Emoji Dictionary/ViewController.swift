//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Thomas Carlson on 7/02/2017.
//  Copyright © 2017 Everpuppy. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var emojitableview: UITableView!
    
    var emojis : [Emoji] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        emojitableview.dataSource = self
        emojitableview.delegate = self
        emojis = makeEmojiArray()
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        
        
        cell.textLabel?.text = emoji.string_emoji
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let emoji = emojis[indexPath.row]
        performSegueWithIdentifier("MoveSegue", sender: emoji)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let defVC = segue.destinationViewController as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArray() -> [Emoji] {
        let emoji1  = Emoji()
        emoji1.string_emoji =  "😀"
        emoji1.creation_year =  2008
        emoji1.definition = "Original Smiley Face"
        emoji1.category = "Face"
        
        let emoji2  = Emoji()
        emoji2.string_emoji =  "😈"
        emoji2.creation_year =  2011
        emoji2.definition = "Little Devil"
        emoji2.category = "Face"
        
        let emoji3  = Emoji()
        emoji3.string_emoji =  "😡"
        emoji3.creation_year =  2009
        emoji3.definition = "Angry Face"
        emoji3.category = "Face"
        
        let emoji4  = Emoji()
        emoji4.string_emoji =  "😜"
        emoji4.creation_year =  20201
        emoji4.definition = "Winky Face"
        emoji4.category = "Face"
        
        let emoji5  = Emoji()
        emoji5.string_emoji =  "😢"
        emoji5.creation_year =  2012
        emoji5.definition = "Sad Face"
        emoji5.category = "Face"
        
        return [emoji1,emoji2,emoji3,emoji4,emoji5]
    }
}

