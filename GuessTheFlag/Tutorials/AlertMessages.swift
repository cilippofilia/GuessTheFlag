//
//  AlertMessages.swift
//  GuessTheFlag
//
//  Created by Filippo Cilia on 29/07/2022.
//

import SwiftUI

struct AlertMessages: View {
    @State private var showingAlert = false

    var body: some View {
        Button("Show alert") {
            showingAlert = true
        }
        .alert("Important message", isPresented: $showingAlert) {
            Button("Delete", role: .destructive) { }
            Button("Cancel", role: .cancel) { }
        } message: {
            Text("Please read this!")
        }
    }
}

struct AlertMessages_Previews: PreviewProvider {
    static var previews: some View {
        AlertMessages()
    }
}
