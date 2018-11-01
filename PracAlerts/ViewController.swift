//
//  ViewController.swift
//  PracAlerts
//
//  Created by XCode on 30/10/18.
//  Copyright © 2018 XCode. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet var botonAlert: UIButton!
    @IBOutlet var botonAS: UIButton!
    @IBOutlet var texto: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        texto.delegate = self
        self.hideKeyboardWhenTappedAround()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func showAlertUserPw() {
        let alert = UIAlertController(title: "Login", message: "Introduce usuario y contraseña", preferredStyle: .alert)
        alert.addTextField{ textField in
            textField.placeholder = "Nombre de usuario"
            textField.delegate = self
        }
        alert.addTextField{ textField in
            textField.isSecureTextEntry = true
            textField.placeholder = "Contraseña"
            textField.delegate = self
        }
        let action = UIAlertAction(title: "OK", style: .default, handler: { action in
            print("Autenticación")
            print(alert.textFields![0].text!)
            print(alert.textFields![1].text!)
        })
        alert.addAction(action)
        present(alert, animated: true)
    }
    
    @IBAction func showActionSheet() {
        let actionSheet = UIAlertController(title: "Selección", message: "Elija una opción", preferredStyle: .actionSheet)
        let opcion1 = UIAlertAction(title: "Opción 1", style: .default, handler: { action in
            print("Opción 1")
        })
        
        let opcion2 = UIAlertAction(title: "Opción 2", style: .default, handler: { action in
            print("Opción 2")
        })
        
        let opcion3 = UIAlertAction(title: "Opción 3", style: .default, handler: { action in
            print("Opción 3")
        })
        
        actionSheet.addAction(opcion1)
        actionSheet.addAction(opcion2)
        actionSheet.addAction(opcion3)
        
        present(actionSheet, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "view2" {
        (segue.destination as! ViewController2).textoPass = texto.text!
        } else {
            (segue.destination as! ViewController3).textoPass = texto.text!
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}

