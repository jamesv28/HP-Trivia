//
//  InstructionsView.swift
//  HP-Trivia
//
//  Created by James Volmert on 10/15/24.
//

import SwiftUI

struct InstructionsView: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        ZStack {
            InfoBackgroundView()
            VStack {
                Image("appiconwithradius")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150)
                    .padding(.top)
                
                ScrollView {
                    Text("How to Play")
                        .font(.largeTitle)
                        .padding()
                    VStack(alignment: .leading) {
                        Text("Welcom to HP Trivia! In this game, you will bae asked questions from the HP books. You must answer the questions correctly or you will lose points. 😱 ")
                            .padding([.horizontal, .vertical])
                        
                        Text("Each question is worth five points, but if you guess a wrong answer, you will lose one point")
                            .padding([.horizontal, .vertical])
                        
                        Text("If you are struggling, there is a helpful tip or you can be notified of the book where it is from. But beware, you will also lose one pont")
                            .padding([.horizontal, .vertical])
                        
                        Text("When you select the right answer, you will be awarded the ramining points and will be added to the total score")
                            .padding(.horizontal)
                        
                    }
                    Text("Good Luck")
                        .font(.title)
                        .textCase(.uppercase)
                }
                .foregroundStyle(.black)
                
                Button("Done") {
                    dismiss()
                }
                .doneButton()
                
            }
            .font(.title3)
        }
    }
}

#Preview {
    InstructionsView()
        .preferredColorScheme(.dark)
}
