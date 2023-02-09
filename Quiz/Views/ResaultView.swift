
import SwiftUI

struct ResaultView: View {
    let playerScorePercentage: Int
    var messageForPlayer: String
    
    var body: some View {
        ZStack{
            ProjectColors.backgroundPrimaryColor.ignoresSafeArea()
            VStack(spacing: 64.0){
                VStack(spacing: 8.0){
                    Text("\(playerScorePercentage)%")
                        .font(.system(size: 64.0))
                        .fontWeight(.bold)
                        .foregroundColor(ProjectColors.textSecondaryColor)
                        
            
                    Text("\(messageForPlayer)")
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ProjectColors.textSecondaryColor)
                        
                }
                
                
                NavigationLink(destination: QuestionView(),
                label: {
                    Text("Retake quiz")
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding(.horizontal, 32.0)
                        .padding(.vertical, 12.0)
                        .background(Color.blue)
                        .foregroundColor(ProjectColors.textSecondaryColor)
                        .cornerRadius(24.0)
                    
                }
                )
            }
        }
        .navigationBarHidden(true)
    }
    

        
}

struct ResaultView_Previews: PreviewProvider {
    static var previews: some View {
        ResaultView(playerScorePercentage: 10, messageForPlayer: "Oops!")
            .environmentObject(GameViewModel())
    }
}
