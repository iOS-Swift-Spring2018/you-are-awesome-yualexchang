//: Playground - noun: a place where people can play

import UIKit


var myInt = 30000
var myDOuble = 30000.0

var myBool = true
myBool = "John" == "john"

var myWeight: Int = 170
var percentGoal: Double = 0.10
var weightToLose = Double(myWeight) * percentGoal
print(weightToLose)

var weightMessage = "My weight is currently: " + String(weightToLose)

Double("170")

let messages = ["You are Great!", "You are fatastic!","Fabulous? that is you!"]
var myUint = arc4random_uniform(5)

var randomIndex = arc4random_uniform(UInt32(messages.count))

messages[Int(randomIndex)]
