//
//  Screen2ViewController.swift
//  InternalMessagingApp
//
//  Created by Joe Salter on 6/10/16.
//  Copyright © 2016 Joe Salter. All rights reserved.
//

import UIKit

class Screen2ViewController: UIViewController, MessagingProtocol {

    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var label2: UILabel!
    
    var delegate2: MessagingProtocol?
    var newMessage = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        label2.text = newMessage
    }

    func changeLabel(message: String) {
        newMessage = message
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func goToScreen1(sender: UIButton) {
        delegate2?.changeLabel(textField2.text!)
        
        navigationController?.popViewControllerAnimated(true)
    }
}
