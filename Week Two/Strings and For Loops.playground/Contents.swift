//: Playground - noun: a place where people can play

import UIKit

//var str = "Hello, playground"
//var age = 20
//print("I am \(20) years old, that's \(age*7) in dog years.")
//var lastName = "Chang"
//var phrase = "My last name is \(lastName) and it contains \(lastName.count)"
//print(phrase)
//
//let multiLineBreak = """
//            This is the start of a multi-line String.
//        The bottom triple-quote is the anchor for indenting.
//    Triple Quotes enclose multi-line String literals.
//    """
//print(multiLineBreak)
//var myString = "Alex Chang \n 885 Centre St \n Duchesne West Room 131\n Boston College"
//print(myString)

//for increment in 3...7 {
//    print(increment)
//}
//
//var quizzes = [72,81,89,95,92,100]
//
//var sum = 0
//
//for index in 0...quizzes.count-1 {
//    sum += quizzes[index]
//}
//
//print("The sum of all quizzes is: \(sum)")
//print("The average of all \(quizzes.count) quizzes is \(sum/quizzes.count)")
//
//sum = 0
//for index in 0..<quizzes.count {
//    sum += quizzes[index]
//}
//
//print("The sum of all quizzes is: \(sum)")
//print("The average of all \(quizzes.count) quizzes is \(sum/quizzes.count)")
//
//sum = 0
//for quiz in quizzes {
//    sum += quiz
//}
//
//print("The sum of all quizzes is: \(sum)")
//print("The average of all \(quizzes.count) quizzes is \(sum/quizzes.count)")


for countByFours in stride(from: 0, through:100, by:4) {
    print(countByFours)
}

for countByFours in stride(from: 0, to:100, by:4) {
    print("To: \(countByFours)")
}

for countByFours in stride(from: 1  , through:100, by:4) {
    print("1 start: \(countByFours)")
}


for tubmans in stride (from:100, through: 0, by:-20) {
    print("\(tubmans/20) tubmans = $\(tubmans)")
}

for countdown in (0...5).reversed() {
    print(countdown)
}


var howMuchLiked = 3
var likePhrase = ""
for _ in 1...howMuchLiked {
    likePhrase += " really"
}
print("I\(likePhrase) like Swift")




