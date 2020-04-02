//
//  ViewController.swift
//  Casale Homework #4
//
//  Created by Amy Casale on 2/26/20.
//  Copyright © 2020 Amy Casale. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func displayTickets(_ sender: Any) {
    
    
    //setup alert
    let alert = UIAlertController(title: "How many tickets would you like?", message: "(You can select up to 10 tickets.)", preferredStyle: .alert)
        
    //add the action
    alert.addAction(UIAlertAction(title: NSLocalizedString("Okay", comment: "Default action"), style: .`default`, handler: { _ in}))
        
    //display the alert
    self.present(alert,animated: true, completion: nil)
        
    }
    
    @IBOutlet weak var usernameField: UITextField!
    @IBAction func loginUsername(_ sender: Any) {
        
        //Design the input collection
        let ac = UIAlertController(title: "Please enter your username.", message: nil, preferredStyle: .alert)
        ac.addTextField()
        
        let submitAction = UIAlertAction(title: "Enter", style: .default) { [unowned ac]_ in
        
        let answer = ac.textFields![0]
            self.usernameField.text = answer.text
            
        //Design the second alert
            let alert = UIAlertController(title: "Welcome to Ticket Boss: ", message: answer.text, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("Okay", comment: "Default action"), style: .`default`, handler: {_ in} ))
            
        //Display the alert
            self.present(alert,animated: true, completion: nil)}
        ac.addAction(submitAction)
        present(ac, animated: true)
            
    }
    
    @IBOutlet weak var paymentField: UITextField!
    @IBAction func creditCardInfo(_ sender: Any) {
        
        //Design the input collection
        let ac = UIAlertController(title: "Please enter your credit card number.", message: nil, preferredStyle: .alert)
        ac.addTextField()
        
        let submitAction = UIAlertAction(title: "Enter", style: .default) { [unowned ac]_ in
            
            let answer = ac.textFields![0]
            self.paymentField.text = answer.text
            
        //Design the second alert
        let alert = UIAlertController(title: "Credit card information is valid", message: answer.text, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("Okay", comment: "Default action"), style: .`default`, handler: {_ in}))
            
        //Display the alert
            self.present(alert,animated: true, completion: nil)}
        ac.addAction(submitAction)
        present(ac, animated: true)
        
    }
    
    


override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
}

}
