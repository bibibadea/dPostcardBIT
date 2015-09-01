//
//  ViewController.swift
//  dPostcardBIT
//
//  Created by Bibi Badea on 8/31/15.
//  Copyright © 2015 Stormbraces. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLAB: UILabel!
    
    @IBOutlet weak var enterNameFLD: UITextField!
    @IBOutlet weak var enterMessageFLD: UITextField!
    
    
    @IBOutlet weak var mailBTN: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        messageLAB.hidden  = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailBTN(sender: AnyObject) {
        
        
        messageLAB.hidden = false
        messageLAB.text = enterMessageFLD.text
        enterMessageFLD.text = ""
        
        //hide keyboard
        enterMessageFLD.resignFirstResponder()
        
        mailBTN.setTitle("Am trimis acest mail", forState: UIControlState.Normal)
        
        
    }

    
}

