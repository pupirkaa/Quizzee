import SwiftUI

struct MyButton: View {
    let screenWidth = UIScreen.main.bounds.size.width
    
    @EnvironmentObject var viewModel: GameViewModel
    let question: Question
    
    
    var choiceText: String {
        get {
            question.answersList[buttonId]
        }
    }
    var isCorrect: Bool {
        get {
            question.correctAnswerIndex == buttonId
        }
    }
    
    let buttonId: Int
    let color: Color
    var body: some View {
        Button(action: {
            print("User chose answer : \(choiceText)")
            viewModel.wasCorrect = isCorrect
            viewModel.updatePlayerScore(isCorrect: isCorrect)
            
            if !viewModel.isSwitchingScreens {
                viewModel.isSwitchingScreens = true
                 Task {
                    try await Task.sleep(nanoseconds: 2_000_000_000)
                    viewModel.updateQuestion()
                    viewModel.isSwitchingScreens = false
                }
            }
            
        }, label: {
            Text(choiceText)
                .font(.title2)
                .fontWeight(.bold)
                .frame(width: screenWidth/2-12, height: 160.0)
                .background(color)
        })
        .disabled(viewModel.isSwitchingScreens)
        
        
    }
    
    
    init(buttonId: Int, question: Question) {
        switch buttonId {
        case 0:
            self.color = Color.blue
        case 1:
            self.color = Color.green
        case 2:
            self.color = Color.yellow
        case 3:
            self.color = Color.pink
        default:
            self.color = Color.blue
        }
        
        self.buttonId = buttonId
        self.question=question
    }
}

//struct ChoiceTextView_Previews: PreviewProvider {
//    static var previews: some View {
//       MyButton(buttonId: 0, )
//            .environmentObject(GameViewModel())
//    }
//}
