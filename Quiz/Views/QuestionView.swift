import SwiftUI

struct QuestionView: View {
    
    var game = Game()
    @StateObject var viewModel = GameViewModel()
    
    var body: some View {
        ZStack {
            ProjectColors.backgroundPrimaryColor.ignoresSafeArea()
            VStack{
                VStack{
                    Text(viewModel.currentQuestion.questionText)
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding(.top, 64.0)
                        .padding(.all, 24.0)
                    
                    if viewModel.isSwitchingScreens{
                        Text(viewModel.sendRightAnswer())
                            .font(.title)
                    }
                    
                }
                Spacer()
                
                VStack(spacing: 8.0){
                    VStack{
                        HStack {
                            MyButton(buttonId: 0, question: viewModel.currentQuestion)
                            MyButton(buttonId: 1, question: viewModel.currentQuestion)
                        }
                        .environmentObject(viewModel)
                        HStack{
                            MyButton(buttonId: 2, question: viewModel.currentQuestion)
                            MyButton(buttonId: 3, question: viewModel.currentQuestion)
                        }
                        .environmentObject(viewModel)
                        
                    }
                    .padding(.all, 8)
                    .background(Color.white)
                    
                    
                    Text("\(viewModel.currentQuestionNumber) / \(viewModel.questionsNumber)")
                        .fontWeight(.semibold)
                        .padding(.all, 12.0)
                }
                
            }
        }
        
        .foregroundColor(ProjectColors.textSecondaryColor)
        .navigationBarHidden(true)
        .background(
            NavigationLink(destination: ResaultView(playerScorePercentage: viewModel.playerScorePercentage, messageForPlayer: viewModel.messageForPlayer()),
                           isActive: .constant(viewModel.gameIsOver),
                           label: { EmptyView() })
            .environmentObject(viewModel)
        )
        
    }
}

    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
    }
}

