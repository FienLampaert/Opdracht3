//
//  Rekenmachine.swift
//  Opdracht3
//
//  Created by student on 3/10/18.
//  Copyright © 2018 nielsbrackeva. All rights reserved.
//

import Foundation


class Rekenmachine{
    var getallen: [Double]
    
    init(){
        getallen = [];
    }
    
     func clearStack(){
        getallen.removeAll();
     }
     
     func addOperand(Operand operand: Double){
        getallen.append(operand);
     }
     
     /*
    func performOperation(Operator operation: String) -> (result: Double?, feedback: String){
     
        //let o = operation;
        var result: Double;
        
        if(getallen.count >= 2){
            let g1 = getallen[0];
            let g2 = getallen[1];
            
            result = g1 + g2;
            
        }
        
        //return Double(result);
        
     }
 */
    
}


