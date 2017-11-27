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
    
   
    @IBAction func copyText(_ sender: UIButton) {
    }
    
    @IBAction func pasteText(_ sender: UIButton) {
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

