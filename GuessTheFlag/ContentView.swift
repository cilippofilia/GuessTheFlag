//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Filippo Cilia on 28/07/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var showingScore = false
    @State private var endGame = false

    @State private var score = 0
    @State private var scoreTitle = ""
    @State private var scoreMessage = ""

    @State private var questionsAsked = 0
    @State private var numberOfQuestions = 2

    @State private var correctAnswer = Int.random(in: 0...2)
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()

    var body: some View {
        ZStack {
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3)
            ],center: .top, startRadius: 200, endRadius: 700)
            .ignoresSafeArea()

            VStack {
                Spacer()

                Text("Guess the Flag")
                    .font(.largeTitle.bold())
                    .foregroundColor(.white)

                Spacer()

                VStack(spacing: 15) {
                    VStack {
                        Text("Tap the flag of:")
                            .font(.subheadline.weight(.heavy))
                            .foregroundStyle(.secondary)

                        Text(countries[correctAnswer])
                            .font(.largeTitle.weight(.semibold))
                    }

                    ForEach(0..<3) { number in
                        Button {
                            flagTapped(number)
                        } label: {
                            FlagImage(countries: countries, number: number)
                            // Challenge from project 3
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.thinMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 20))

                Spacer()
                Spacer()

                Text("Score: \(score)")
                    .foregroundColor(.white)
                    .font(.title.bold())

                Spacer()
            }
            .padding()
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            Text(scoreMessage)

            Text("Your score is \(score)")
        }
        .alert("GAME OVER", isPresented: $endGame) {
            Button("Play again", action: playAgain)
        } message: {
            Text("Your final score is: \(score)")
        }
    }

    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct!!"
            scoreMessage = "That's the flag of \(countries[correctAnswer])"

            score += 1
            questionsAsked += 1
        } else {
            scoreTitle = "Wrong!"
            scoreMessage = "That's the flag of \(countries[number])"

            score -= 1
            questionsAsked += 1
        }

        showingScore = true

        if questionsAsked == numberOfQuestions {
            endGame = true
        }
    }

    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }

    func playAgain() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        questionsAsked = 0
        score = 0
    }
}

// Challenge from project 3
struct FlagImage: View {
    var countries: [String]
    var number: Int

    var body: some View {
        Image(countries[number])
            .renderingMode(.original)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .shadow(radius: 5)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

/* CHALLENGES:
 ✅ 1. Add an @State property to store the user’s score, modify it when they get an answer right or wrong, then display it in the alert and in the score label.
 ✅ 2. When someone chooses the wrong flag, tell them their mistake in your alert message – something like “Wrong! That’s the flag of France,” for example.
 ✅ 3. Make the game show only 8 questions, at which point they see a final alert judging their score and can restart the game.

 Project 3 Challenge:
 ✅ 1. Go back to project 2 and replace the Image view used for flags with a new FlagImage() view that renders one flag image using the specific set of modifiers we had.
*/
