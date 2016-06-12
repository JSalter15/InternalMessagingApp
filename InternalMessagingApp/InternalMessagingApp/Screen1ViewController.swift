//
//  Screen1ViewController.swift
//  InternalMessagingApp
//
//  Created by Joe Salter on 6/10/16.
//  Copyright © 2016 Joe Salter. All rights reserved.
//

import UIKit

class Screen1ViewController: UIViewController, MessagingProtocol {

    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var label1: UILabel!
    
    var delegate1: MessagingProtocol?
    var newMessage = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        label1.text = newMessage
    }
    
    func changeLabel(message: String) {
        newMessage = message
    }
    
    @IBAction func goToScreen2(sender: UIButton) {
        delegate1?.changeLabel(textField1.text!)

        let appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        appDelegate.pushScreen2()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
