//
//  ViewController.swift
//  Calculadora
//
//  Created by Carolina Maffia on 12/07/2023.
//

import UIKit

class ViewController: UIViewController {
    
    enum Operacion {
        case suma
        case resta
        case multiplicacion
        case division
    }
    
    //IBOutlet modificar u obtener propiedades del elemento pero no podemos ejecutar codigo cuando ese elemento es seleccionado en la interfaz
    
    @IBOutlet weak var numeroUnoTextField: UITextField!
    @IBOutlet weak var numeroDosTexfield: UITextField!
    @IBOutlet weak var resultadoLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //IBAction corren un bloque de codigo y se corre cuando el elemento es seleccionado en la interfaz
        
    @IBAction func accionSuma(_ sender: UIButton) {
        realizarOperacion(operacion: .suma)    }
    
    @IBAction func accionResta(_ sender: UIButton) {
        realizarOperacion(operacion: .resta)
    }
    
    @IBAction func accionMultiplicacion(_ sender: UIButton) {
        realizarOperacion(operacion: .multiplicacion)
    }
    
    @IBAction func accionDivision(_ sender: UIButton) {
        realizarOperacion(operacion: .division)
    }
    
    func realizarOperacion(operacion: Operacion) {
        let num1 = Int(numeroUnoTextField.text!)!
        let num2 = Int(numeroDosTexfield.text!)!
        
        switch operacion {
        case .suma:
            let resultado = num1 + num2
            resultadoLabel.text = "\(resultado)"
            break
        case .resta:
            let resultado = num1 - num2
            resultadoLabel.text = "\(resultado)"
            break
        case .multiplicacion:
            let resultado = num1 * num2
            resultadoLabel.text = "\(resultado)"
            break
        case .division:
            let resultado = num1 / num2
            resultadoLabel.text = "\(resultado)"
            break
        }
        
        
    }
}

