//
//  ViewController.swift
//  Postksrd4
//
//  Created by Magdalena Kozomara on 31.03.15.
//  Copyright (c) 2015 Vladimir Kozomara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var massageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMassageTextField: UITextField!
    @IBOutlet weak var sendMailButton: UIButton!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Nakon sto pritisnemo dugme Send Mail massageLabel vise nece biti skriven
        massageLabel.hidden = false
        
        // Na ovaj nacin pritiskom na dugme Send Mail varijabli massageLabel dodjeljujemo vrujednost varijable enterMassageTextField
        massageLabel.text = enterMassageTextField.text
        
        // Mjenjamo boju tekst kojeg prikazuje varijabla massageLabel
        massageLabel.textColor = UIColor.redColor()
        
        // Nakon pritiska na dugme Send Mail nestace uneseni tekst iz polja enterMassageTextField
        enterMassageTextField.text = ""
        
        // Nakon sto pritisnemo dugme Send Mail tastatura ce nestati
        enterMassageTextField.resignFirstResponder()
        
        // Nakon sto pritisnemo dugme Send Mail ono ce promjeniti tekst i na njemu ce pisati Mail Sent
        sendMailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        
    }


}

