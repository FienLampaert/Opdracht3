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
        let g = (sender as AnyObject).currentTitle!;
        getal += String(g ?? "");
    }
    
    @IBAction func btnEnter(_ sender: Any) {
        let gDouble = Double(getal);
        rekenmachine.addOperand(Operand: gDouble ?? 0.0);
        
        txtStack.text += String(getal) + "\n";
        getal = "";
    }
    
    @IBAction func btnOperation(_ sender: Any) {
        let operation = (sender as AnyObject).currentTitle!;
        let result = rekenmachine.performOperation(Operator: operation!);
        let r = result.result;
        txtStack.text += String(r ?? 0.0) + "\n";
        let feedback = result.feedback;
        lblFeedback.text = feedback;
    }
    
    @IBAction func btnClear(_ sender: Any) {
        rekenmachine.clearStack();
        txtStack.text = "";
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
}

