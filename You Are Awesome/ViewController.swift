//
//  ViewController.swift
//  You Are Awesome
//
//  Created by Yu Chang on 1/19/18.
//  Copyright © 2018 Chang. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    //MARK: - Properties
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var soundSwitch: UISwitch!
    
    var awesomePlayer = AVAudioPlayer()
    var index = 0
    var imageIndex = 0
    var soundIndex = -1
    var numOfImages = 9
    var numOfSounds = 5
    

    //Code below executives when app's code first loads
    override func viewDidLoad() {
        super.viewDidLoad()
        print("*** The viewDidLoad has executed at \(Date())")
    }
    
    // MARK: - My Own Functions
    
    func playSound(soundName: String, audioPlayer: inout AVAudioPlayer) {
        if let sound = NSDataAsset(name: soundName) {
            //check to see if it is a sound file
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                print(soundIndex)
                audioPlayer.play()
            } catch {
                //if sound.data is not acceptable
                print("\(sound) could not be played.")
            }
        } else {
            // if reading data didn't work, tell error
            print("")
        }
    }
    
    func nonRepeatingRandom (lastNumber: Int, maxValue: Int) -> Int {
        var newIndex = -1
        repeat {
            newIndex = Int(arc4random_uniform(UInt32(maxValue)))
        } while lastNumber == newIndex
        return newIndex
    }
    
    
    // MARK: - Action
    
    @IBAction func soundSwitchPressed(_ sender: UISwitch) {
        
        if !soundSwitch.isOn && soundIndex != -1 {
            //stop playing
            awesomePlayer.stop()
        }
    }
    
    
    @IBAction func showMessagePressed(_ sender: UIButton) {
        let message = ["You are Fantastic!",
                       "You are Great!",
                       "You are Awesome!",
                       "When the genius bar needs help, they call you!",
                       "You brighten my day!"]
        
        
        //show a message
        index = nonRepeatingRandom(lastNumber: index, maxValue: message.count)
        messageLabel.text = message[index]
        
        //show an image
        image.isHidden = false //show the image
        imageIndex = nonRepeatingRandom(lastNumber: index, maxValue: numOfImages)
        image.image = UIImage(named: "\(imageIndex+1)")
        
        if soundSwitch.isOn {
            //play a sound
            soundIndex = nonRepeatingRandom(lastNumber: index, maxValue: numOfSounds)
            let soundName = "Sound\(soundIndex)"
            playSound(soundName: soundName, audioPlayer: &awesomePlayer)
        }
        
        
        //        var randomIndex = Int(arc4random_uniform(UInt32(messages.count))
        //        messageLabel.text = messages[randomIndex]
        
        //        messageLabel.text = message[index]
        //        messageLabel.textColor = UIColor.orange
        //        index += 1
        //
        //        if (index == message.count) {
        //            index = 0
        //        }
        
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

