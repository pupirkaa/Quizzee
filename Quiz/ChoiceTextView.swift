//
//  ChoiceTextView.swift
//  Quiz
//
//  Created by Irina on 30.01.23.
//

import SwiftUI

struct ChoiceTextView: View {
    let choiceText: String
    let screenWidth = UIScreen.main.bounds.size.width
    var color: Color
    
    
    var body: some View {
        Text(choiceText)
            .font(.title2)
            .fontWeight(.bold)
            .frame(width: screenWidth/2-12, height: 160.0)
            .background(color)
    }
}

struct ChoiceTextView_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceTextView(choiceText: "ChoiceText!", color: Color.blue)
    }
}
