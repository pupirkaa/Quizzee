import SwiftUI

//Colors
let textPrimaryColor = Color.black
let textSecondaryColor = Color.white
let backgroundPrimaryColor = Color(red: 20/255, green: 28/255, blue: 58/255)

let screenWidth = UIScreen.main.bounds.size.width

var playerScore = 0
var questionNumber = 1

struct ContentView: View {
    var body: some View {
        ZStack {
            backgroundPrimaryColor.ignoresSafeArea()
            VStack{
                Text("What was the first computer bug?")
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
                        }, label: {
                            Text("Ant 🐜")
                                .font(.title2)
                                .fontWeight(.bold)
                                .frame(width: screenWidth/2-12, height: 160.0)
                                .background(Color.blue)
                            
                        }
                        )
                        Button(action: {
                            print("Tapped on 2")
                        }, label: {
                            Text("Fly 🪰")
                                .font(.title2)
                                .fontWeight(.bold)
                                .frame(width: screenWidth/2-12, height: 160.0)
                                .background(Color.green)
                        }
                        )
                    }
                    HStack{
                        Button(action: {
                            print("Tapped on 3")
                        }, label: {
                            Text("Moth 🦟")
                                .font(.title2)
                                .fontWeight(.bold)
                                .frame(width: screenWidth/2-12, height: 160.0)
                                .background(Color.yellow)
                        }
                        )
                        Button(action: {
                            print("Tapped on 4")
                        }, label: {
                            Text("Beetle 🪲")
                                .font(.title2)
                                .fontWeight(.bold)
                                .frame(width: screenWidth/2-12, height: 160.0)
                                .background(Color.pink)
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

