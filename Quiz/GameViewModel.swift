//
//  GameViewModel.swift
//  CodeHistory
//
//  Created by Ben Stone on 3/4/21.
//
import Foundation
import SwiftUI

class GameViewModel: ObservableObject {
    @Published public var isSwitchingScreens = false
    @Published private var game = Game()
    
    var currentQuestion: Question {
        game.currentQuestion
    }
    
    var currentQuestionNumber: Int{
        game.questionCurrentIndex+1
    }
    
    var questionsNumber: Int{
        game.questionsNumber
    }
    var currentQuestionText: [String]{
        game.currentQuestion.answersList
    }
    
    var playerScorePercentage: Int{
        game.playerScore*100/questionsNumber
    }
    
    var gameIsOver: Bool{
        game.isOver
    }
    
    var wasCorrect: Bool = true
    
    func sendRightAnswer() -> String {
        switch wasCorrect{
        case true:
            return "✅"
        case false:
            return "❌"
        }
    }
    
    func updatePlayerScore(isCorrect: Bool) {
        if isCorrect{
            game.updatePlayerScore()
        }
    }
    
    func updateQuestion(){
        game.updateQuestion()
    }
    
    func messageForPlayer() -> String {
        switch playerScorePercentage {
            case 0...50:
                return "Ooops!"
            case 51...70:
                return "Good!"
            case 71...90:
                return "Very good!"
            case 100:
                return "Exellent!"
            default:
                return "Error"
        }
    }
    
    
}


