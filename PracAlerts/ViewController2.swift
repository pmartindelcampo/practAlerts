//
//  ViewController2.swift
//  PracAlerts
//
//  Created by XCode on 30/10/18.
//  Copyright © 2018 XCode. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    var textoPass : String = ""
    @IBOutlet var botonAtras: UIButton!
    @IBOutlet var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = textoPass
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func volver() {
        dismiss(animated: true, completion: nil)
    }
}
