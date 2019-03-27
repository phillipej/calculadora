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
    var calculando = false;
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        label.text = ""
    }

    @IBOutlet weak var label: UILabel!
    
    
    @IBAction func numeros(_ sender: UIButton)
    {
        
        //armazena o numero digitado em novoNumero e executa o else, o objetivo é apagar o valor do operador já digitando um novo numero
        if calculando == true
        {
            label.text = String(sender.tag - 1)
            novoNumero = Double(label.text!)!
            calculando  = false
        }
            
        //O valor que ja foi digitado anteriormente continua na Label e acrescido do novo valor digitado
        // a cada nova string, novoNumero recebe o novo valor escrito na label
        else
        {
            label.text = label.text! + String(sender.tag - 1)
            novoNumero = Double(label.text!)!
        }


    }


    @IBAction func simbolos(_ sender: UIButton) {
        // aparecer o simbolo na tela
        if label.text != "" && sender.tag != 11 && sender.tag != 16
        {
            
            numeroAtual = Double(label.text!)!
            
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
            
            calculando = true
        }
            
        
        else if sender.tag == 16
         {
            
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

        }
            
        else if sender.tag == 11
        {
            numeroAtual = 0
            operador = ""
            novoNumero = 0
            label.text = ""
        }
        
        
        
    }
    
    
}

