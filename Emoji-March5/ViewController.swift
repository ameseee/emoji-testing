//
//  ViewController.swift
//  Emoji-March5
//
//  Created by Holt Bolt on 3/5/20.
//  Copyright © 2020 Amy Holt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let emojis = ["😂": "laughing", "🥳": "celebrating", "😩": "sad"]
    
    let customMessages = [
        "laughing" : ["hahahah", "hehehehe", "that's hilarious", "muhahaha"],
        "celebrating" : ["cheers", "whoohoo", "you go!", "party!"],
        "sad" : ["it's going to be ok", "love you", "do you need anything?", "bumma"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func showMessage(sender: UIButton) {
        let randomNum = Int.random(in: 0..<2)
        let selectedEmotion = (sender.titleLabel?.text)!
        let options = customMessages[emojis[selectedEmotion]!]!
        let emojiMessage = options[0]
        print(emojiMessage)
    
        let alertController = UIAlertController(title: emojis[selectedEmotion], message: options[randomNum], preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }

}

