//
//  ViewController.swift
//  Opdracht3
//
//  Created by student on 27/09/18.
//  Copyright © 2018 nielsbrackeva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let rekenmachine = Rekenmachine()
    var getal: String = "";
    
    @IBOutlet weak var txtStack: UITextView!
    @IBOutlet weak var lblFeedback: UILabel!
    @IBAction func bntCijfer(_ sender: Any) {
        //var m = (sender as AnyObject).titleLabel!.text;
        //var g = String((sender as AnyObject).titleLabel!.text);
        var g = sender.currentLabel;
        getal += String(m!)!;
    }
    
    @IBAction func btnEnter(_ sender: Any) {
        
    }
    
    @IBAction func btnOperation(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
}

