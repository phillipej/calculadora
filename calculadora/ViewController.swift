//
//  ViewController.swift
//  calculadora
//
//  Created by Phillipe Osorio on 26/03/19.
//  Copyright © 2019 Phillipe Osorio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numeroAtual:Double = 0;
    var novoNumero:Double = 0;
    var resultado:Double = 0;
    var operador = "";
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        label.text = ""
    }

    @IBOutlet weak var label: UILabel!
    
    
    @IBAction func numeros(_ sender: UIButton)
    {
        if label.text == ""
        {
            label.text = label.text! + String(sender.tag-1)
            numeroAtual = Double(label.text!)!
            
        }
       
        
        if operador != ""
        {
            label.text = ""
            label.text = label.text! + String(sender.tag-1)
            novoNumero = Double(label.text!)!
        }
        
    
        
        
  
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
            
         if sender.tag == 16{
            
            if operador == "/"
            {
                resultado = (numeroAtual / novoNumero)
                label.text = String(resultado)
            }
            
            else if operador == "x"
            {
                resultado = (numeroAtual * novoNumero)
                label.text = String(resultado)
            }
            else if operador == "-"
            {
                resultado = (numeroAtual - novoNumero)
                label.text = String(resultado)
            }
            else if operador == "+"
            {
                resultado = (numeroAtual + novoNumero)
                label.text = String(resultado)
            }
            
            numeroAtual = resultado
        }
      
        }
        
        if sender.tag == 11
        {
            numeroAtual = 0
            operador = ""
            novoNumero = 0
            label.text = ""
        }
        
        
        
    }
    
    
}

