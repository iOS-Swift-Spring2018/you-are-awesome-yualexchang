//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
let quiz1 = 81.0
let quiz2 = 80.0

func averageQuizzes() {
    let average = Double(quiz1+quiz2)/2
    print("the average is \(average)")
}

averageQuizzes()

print("")
var nameLists = ["a","b","c","d","e"]
func listAllNames () {
    for name in nameLists {
        print(name)
    }
}
listAllNames()
//parameters
//average with parameters
func aveQuizzes (quiz1: Double, quiz2: Double) {
    let average = Double(quiz1+quiz2)/2
    print("the average of \(quiz1) and \(quiz2) is \(average)")
}

var johnQuiz1 = 91.0
var johnQuiz2 = 82.0

aveQuizzes(quiz1: quiz1, quiz2: quiz2)
aveQuizzes(quiz1: 67, quiz2: 69)
aveQuizzes(quiz1: johnQuiz1 * 1.1, quiz2: johnQuiz2 * 1.1)


var section1TAs = ["ww","tt","ss"]
var section2TAs = ["cc","bb","aa"]
print("")

func listNames (nameArrays: [String]) {
    for name in nameArrays {
        print(name)
    }
}

listNames(nameArrays: section1TAs)
print("")
listNames(nameArrays: section2TAs)
print("")
listNames(nameArrays: nameLists)
print("")
listNames(nameArrays: section1TAs + section2TAs)
print("")

func returnTwoAve (quiz1: Double, quiz2: Double) -> Double {
    let ave = (quiz1 + quiz2) / 2
    return ave
}


let myAvg = returnTwoAve(quiz1: 87.5, quiz2: 89.3)

print("\(myAvg) is my average quiz grade")
var firstQuiz = 67.9
var secondQuiz = 99.2
let studentAvg = returnTwoAve(quiz1: firstQuiz, quiz2: secondQuiz)
print(studentAvg)

