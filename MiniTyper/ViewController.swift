//
//  ViewController.swift
//  MiniTyper
//
//  Created by Steven Lipton on 11/27/17.
//  Copyright © 2017 Steven Lipton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var typingText: UITextView!
    @IBOutlet weak var backgroundImage: UIImageView!
    let pasteboard = UIPasteboard.general
   
    @IBAction func copyText(_ sender: UIButton) {
        pasteboard.string = typingText.text
        typingText.text = ""
    }
    
    @IBAction func pasteText(_ sender: UIButton) {
        if pasteboard.hasStrings{
            typingText.text = pasteboard.string
            
        }
        if pasteboard.hasImages{
            backgroundImage.image = pasteboard.image
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        typingText.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

