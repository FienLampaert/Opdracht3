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
    var getal1: String = "";
    
    //@IBOutlet weak var txtStack: UITextView!
    @IBOutlet weak var txtStack2: UITextView!
    @IBOutlet weak var txtStackScroll: UIScrollView!
    @IBOutlet weak var lblFeedback: UILabel!
    
    @IBAction func bntCijfer(_ sender: Any) {
        //var m = (sender as AnyObject).titleLabel!.text;
        //var g = String((sender as AnyObject).titleLabel!.text);
        let g = (sender as AnyObject).currentTitle!;
        getal1 += String(g ?? "");
        getal = String(g ?? "");
        txtStack2.text += getal;
    }
    
    @IBAction func btnEnter(_ sender: Any) {
        let gDouble = Double(getal1);
        rekenmachine.addOperand(Operand: gDouble ?? 0.0);
        
        txtStack2.text += "\n";
        getal = "";
        getal1 = "";
    }
    
    @IBAction func btnOperation(_ sender: Any) {
        let operation = (sender as AnyObject).currentTitle!;
        let result = rekenmachine.performOperation(Operator: operation!);
        let r = result.result;
        txtStack2.text += String(r ?? 0.0) + "\n";
        let feedback = result.feedback;
        lblFeedback.text = feedback;
    }
    
    @IBAction func btnClear(_ sender: Any) {
        rekenmachine.clearStack();
        txtStack2.text = "";
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
}

