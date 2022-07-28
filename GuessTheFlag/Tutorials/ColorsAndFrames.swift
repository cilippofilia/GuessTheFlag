//
//  ColorsAndFrames.swift
//  GuessTheFlag
//
//  Created by Filippo Cilia on 28/07/2022.
//

import SwiftUI

struct ColorsAndFrames: View {
    var body: some View {
        ZStack {
            Color(red: 1, green: 0.6, blue: 0.4)
                .ignoresSafeArea(.all)

            Color.primary
                .frame(width: 400, height: 150)
            Color.secondary
                .frame(width: 500, height: 200)

            Color.yellow
                .frame(minWidth: 300, maxWidth: .infinity, maxHeight: 100)
            Color.orange
                .frame(width: 200, height: 50, alignment: .center)

            Text("Your content")
                .background(.red)
        }
    }
}

struct ColorsAndFrames_Previews: PreviewProvider {
    static var previews: some View {
        ColorsAndFrames()
    }
}
