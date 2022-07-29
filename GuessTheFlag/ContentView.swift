//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Filippo Cilia on 28/07/2022.
//

import SwiftUI

struct ContentView: View {
    var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    var correctAnswer = Int.random(in: 0...2)

    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()

            VStack(spacing: 30) {
                VStack {
                    Text("Tap the flag of:")
                        .font(.title)
                        .foregroundColor(.white)

                    Text(countries[correctAnswer])
                        .font(.title)
                        .bold()
                        .foregroundColor(.white)
                }

                ForEach(0..<3) { number in
                    Button {
                        
                    } label: {
                        Image(countries[number])
                            .renderingMode(.original)
                            .border(.secondary)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
