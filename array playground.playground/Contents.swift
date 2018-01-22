//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
print(str)
str = "Hello Developer!"
print(str)

let message1 = "You are awesome!"
var message2 = "You are great!"
let message3 = "You are fantastic!"

str = message2
print(str)

message2 = message3
print(message2)

var messages = ["You are awesome!","You are great!","You are fantastic!","When the genius bar needs help, they call you.","You brighten my day!"]


print(messages)
print(messages[0])
messages.count
messages[messages.count - 1]
messages.last

messages = messages + ["Hey Fabulous!","You are tremendous!"]
messages += ["You've got the design skill of Jony Ive!"]
messages.insert("You are sweeter than maple syrup!", at: 2)
messages.remove(at: 2)
print(messages)

