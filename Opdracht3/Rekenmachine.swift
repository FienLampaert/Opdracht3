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
    
    func performOperation(Operator operation: String) -> (result: Double?, feedback: String){
     
        let o: String = operation;
        let result: Double;
        let operationString: String;
        var feedback: String;
        
        if(getallen.count >= 2){
            let count = getallen.count;
            let g1 = getallen[count-2];
            let g2 = getallen[count-1];
            
            switch o {
            case "+":
                result = g1 + g2;
                operationString = "opgeteld";
                break;
            case "-":
                result = g1 - g2;
                operationString = "afgetrokken";
                break;
            case "x":
                result = g1 * g2;
                operationString = "vermenigvuldigd";
                break;
            case "/":
                result = g1/g2;
                operationString = "gedeeld";
                break;
            default:
                result = 0;
                operationString = "";
                break;
            }
            feedback = "Getal " + String(g1) + " en getal " + String(g2)
            feedback += " zijn " + String(operationString) + ".";
            getallen.append(result);
        }
        else{
            result = 0;
            feedback = "Er moeten minimum 2 getallen ingevoerd zijn."
            
        }
        
        return (result, feedback);
        
     }
    
}


