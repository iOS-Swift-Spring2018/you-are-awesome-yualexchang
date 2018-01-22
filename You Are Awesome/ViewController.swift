//
//  ViewController.swift
//  You Are Awesome
//
//  Created by Yu Chang on 1/19/18.
//  Copyright © 2018 Chang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    var index = 0
    //Code below executives when app's code first loads
    override func viewDidLoad() {
        super.viewDidLoad()
        print("*** The viewDidLoad has executed at \(Date())")
    }

    @IBAction func showMessagePressed(_ sender: UIButton) {
        let message = ["You are Fantastic!",
                       "You are Great!",
                       "You are Awesome!",
                       "When the genius bar needs help, they call you!",
                       "You brighten my day!"]
        messageLabel.text = message[index]
        messageLabel.textColor = UIColor.orange
        index += 1
        
        if (index == message.count) {
            index = 0
        }
        
//        if messageLabel.text == message[0] {
//            messageLabel.text = message[1]
//            messageLabel.textColor = UIColor.orange
//        } else if messageLabel.text == message[1] {
//            messageLabel.text = message[2]
//            messageLabel.textColor = UIColor.red
//        } else {
//            messageLabel.text = message[0]
//            messageLabel.textColor = UIColor.blue
//        }
    }
    

}

