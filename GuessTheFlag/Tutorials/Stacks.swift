//
//  Stacks.swift
//  GuessTheFlag
//
//  Created by Filippo Cilia on 28/07/2022.
//

import SwiftUI

struct Stacks: View {
    var body: some View {
        ZStack {
            Text("Hello, world!")
            Text("This is inside a ZStack!")

            VStack(alignment: .center) {
                Text("1")
                Text("2")
                Text("3")

                HStack(spacing: 10) {
                    Text("1")
                    Text("2")
                    Text("3")
                }
            }
        }
    }
}

struct Stacks_Previews: PreviewProvider {
    static var previews: some View {
        Stacks()
    }
}
