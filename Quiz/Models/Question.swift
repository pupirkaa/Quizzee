import Foundation

struct Question {
    let questionText: String
    let answersList: [String]
    let correctAnswerIndex: Int
    
    static var allQuestions = [
        Question(questionText: "Who invented the World Wide Web?",
                 answersList: [
                    "Steve Jobs",
                    "Linus Torvalds",
                    "Bill Gates",
                    "Tim Berners-Lee"
                 ],
                 correctAnswerIndex: 3),
        Question(questionText: "What was the first object oriented programming language?",
                 answersList: [
                    "Simula",
                    "Python",
                    "Swift",
                    "C"
                 ],
                 correctAnswerIndex: 0),
        Question(questionText: "What was iOS originally called?",
                 answersList: [
                    "Swift OS",
                    "Apple OS",
                    "iPhone OS",
                    "iPod OS"
                 ],
                 correctAnswerIndex: 2),
        Question(questionText: "Computers use the digits zero and one to store data.  What is this system called?",
                 answersList: [
                    "Binary",
                    "Ternary",
                    "Decimal",
                    "Fraction"
                 ],
                 correctAnswerIndex: 0),
        Question(questionText: "In what year was Swift 1.0 released?",
                 answersList: [
                    "2010",
                    "2013",
                    "2014",
                    "2020"
                 ],
                 correctAnswerIndex: 2),
        Question(questionText: "Who was the first programmer?",
                 answersList: [
                    "Alan Turing",
                    "Ada Lovelace",
                    "Guido van Rossum",
                    "Dennis Ritchie"
                 ],
                 correctAnswerIndex: 1),
        Question(questionText: "What was the first computer bug?",
                 answersList: [
                    "Ant 🐜",
                    "Beetle 🪲",
                    "Moth 🦟",
                    "Fly 🪰"
                 ],
                 correctAnswerIndex: 2),
        Question(questionText: "In what year was the SwiftUI framework introduced?",
                 answersList: [
                    "2015",
                    "2016",
                    "2018",
                    "2019"
                 ],
                 correctAnswerIndex: 3),
        Question(questionText: "What language did iOS developers use before Swift?",
                 answersList: [
                    "Objective-C",
                    "Python",
                    "Typescript",
                    "Java"
                 ],
                 correctAnswerIndex: 0),
        Question(questionText: "What version of iOS introduced dark mode?",
                 answersList: [
                    "iOS 10",
                    "iOS 11",
                    "iOS 12",
                    "iOS 13"
                 ],
                 correctAnswerIndex: 3),
    ]
            
        
    
    func updateQuestion(){
        
    }
}
