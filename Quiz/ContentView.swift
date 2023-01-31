import SwiftUI

//Colors
let textPrimaryColor = Color.black
let textSecondaryColor = Color.white
let backgroundPrimaryColor = Color(red: 20/255, green: 28/255, blue: 58/255)

let screenWidth = UIScreen.main.bounds.size.width

var playerScore = 0
var questionNumber = 1

struct ContentView: View {
    let question = Question(
            questionText: "What was the first computer bug?",
            answersList: ["Ant 🐜", "Beetle 🪲", "Moth 🦟", "Fly 🪰"],
            correctAnswerIndex: 2)
    
    var body: some View {
        ZStack {
            backgroundPrimaryColor.ignoresSafeArea()
            VStack{
                Text(question.questionText)
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.top, 128.0)
                    .padding(.all, 24.0)
                
                Spacer()
                
                VStack{
                    HStack {
                        Button(action: {
                            print("Tapped on 1")
                            if question.correctAnswerIndex == 0 {
                                playerScore+=1
                            }
                        }, label: {
                            ChoiceTextView(choiceText: question.answersList[0], color: Color.blue)
                            
                        }
                        )
                        Button(action: {
                            print("Tapped on 2")
                            if question.correctAnswerIndex == 1 {
                                playerScore+=1
                            }
                        }, label: {
                            ChoiceTextView(choiceText: question.answersList[1], color: Color.green)
                        }
                        )
                    }
                    HStack{
                        Button(action: {
                            print("Tapped on 3")
                            if question.correctAnswerIndex == 0 {
                                playerScore+=1
                            }
                        }, label: {
                            ChoiceTextView(choiceText: question.answersList[2], color: Color.yellow)
                        }
                        )
                        Button(action: {
                            print("Tapped on 4")
                            if question.correctAnswerIndex == 0 {
                                playerScore+=1
                            }
                        }, label: {
                            ChoiceTextView(choiceText: question.answersList[3], color: Color.pink)
                        }
                        )
                    }
                }
                .padding(.all, 8)
                .background(Color.white)
                
                
                Text("\(questionNumber) / 10")
                    .fontWeight(.semibold)
                    .padding(.top, 16.0)
                    .padding(.all, 12.0)
                
            }
            .foregroundColor(textSecondaryColor)
        }
    }
}
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

