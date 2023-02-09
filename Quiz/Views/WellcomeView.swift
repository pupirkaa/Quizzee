
import SwiftUI

struct WellcomeView: View {
    var body: some View {
        NavigationView {
            ZStack{
                ProjectColors.backgroundPrimaryColor.ignoresSafeArea()
                VStack(spacing: 32.0){
                    VStack(spacing: 8.0){
                        Text("Quizzee!")
                            .font(.system(size: 48.0))
                            .fontWeight(.bold)
                            .foregroundColor(ProjectColors.textSecondaryColor)
                        Text("Think you know the history of programming? \nLet's check it!")
                            .font(.title2)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 24.0)
                            .padding(.vertical, 8.0)
                            .foregroundColor(ProjectColors.textSecondaryColor)
                    }
                    NavigationLink(
                        destination: QuestionView(),
                        label: {
                            Text("Start game")
                                .font(.title)
                                .fontWeight(.bold)
                                .padding(.horizontal, 32.0)
                                .padding(.vertical, 12.0)
                                .background(Color.blue)
                                .foregroundColor(ProjectColors.textSecondaryColor)
                                .cornerRadius(24.0)
                        })
            }
            }
            
        }
    }
}

struct WellcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WellcomeView()
    }
}
