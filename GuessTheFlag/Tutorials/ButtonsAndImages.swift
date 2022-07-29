//
//  ButtonsAndImages.swift
//  GuessTheFlag
//
//  Created by Filippo Cilia on 28/07/2022.
//

import SwiftUI

struct ButtonsAndImages: View {
    var body: some View {
        VStack {
            Button("Delete", role: .destructive) {
                print("Deleting")
            }

            Button("Print money", action: executePrinting)

            Button {
                print("SAY Hello!")
            } label: {
                Label("Edit", systemImage: "pencil")
                    .padding()
                    .foregroundColor(.white)
                    .background(.red)
                    .cornerRadius(30)
            }

            VStack {
                Button("Button 1") { }
                    .buttonStyle(.bordered)

                Button("Button 2", role: .destructive) { }
                    .buttonStyle(.bordered)

                Button("Button 3") { }
                    .buttonStyle(.bordered)
                    .tint(.mint)

                Button("Button 4", role: .destructive) { }
                    .buttonStyle(.borderedProminent)
            }

        }
    }

    func executePrinting() {
        print("Printing money...")
    }
}

struct ButtonsAndImages_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsAndImages()
    }
}
