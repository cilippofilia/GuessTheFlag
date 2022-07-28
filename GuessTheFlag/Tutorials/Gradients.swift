//
//  Gradients.swift
//  GuessTheFlag
//
//  Created by Filippo Cilia on 28/07/2022.
//

import SwiftUI

struct Gradients: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient:
                            Gradient(stops: [
                                Gradient.Stop(color: .yellow, location: 0.20),
                                Gradient.Stop(color: .orange, location: 0.70),
                                Gradient.Stop(color: .red, location: 0.90)
                            ]), startPoint: .top, endPoint: .bottom)

//  RadialGradient(gradient: Gradient(colors: [.blue, .black]), center: .center, startRadius: 20, endRadius: 200)

//  AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center)
        }
    }
}

struct Gradients_Previews: PreviewProvider {
    static var previews: some View {
        Gradients()
    }
}
