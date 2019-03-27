//
//  ViewController.swift
//  calculadora
//
//  Created by Phillipe Osorio on 26/03/19.
//  Copyright © 2019 Phillipe Osorio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numeroAtual = 0
    var resultado = 0
    var operador = ""
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        label.text = ""
    }

    @IBOutlet weak var label: UILabel!
    
    
    @IBAction func numeros(_ sender: UIButton) {
        label.text = label.text! + String(sender.tag-1)
  
    }
    
    
    @IBAction func simbolos(_ sender: UIButton) {
        // aparecer o simbolo na tela
        if label.text != "" && sender.tag != 11
        {
            
            if sender.tag == 12
            {
                operador = "/"
                label.text = operador
            }
            else if sender.tag == 13
            {
                operador = "x"
                label.text = operador
            }
            else if sender.tag == 14
            {
                operador = "-"
                label.text = operador
            }
            else if sender.tag == 15
            {
                operador = "+"
                label.text = operador
            }
            
        }
        
        
        
    }
    
    
}

