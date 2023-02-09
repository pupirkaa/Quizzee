
struct Game{
    private let questions: [Question]
    var questionCurrentIndex = 0
    let questionsNumber = Question.allQuestions.count
    public private(set) var playerScore = 0
    private (set) var isOver = false
    
    var currentQuestion: Question {
        questions[questionCurrentIndex]
    }
    
    init(){
        self.questions=Question.allQuestions.shuffled()
        
    }
    
    mutating func updateQuestion() {
        if questionCurrentIndex+1 < questionsNumber {
            questionCurrentIndex+=1
        }
        else{
            isOver = true
        }
    }
    
    mutating func updatePlayerScore(){
        playerScore+=1
    }
}
