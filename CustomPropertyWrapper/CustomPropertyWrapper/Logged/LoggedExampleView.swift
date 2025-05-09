//
//  LoggedExampleView.swift
//  CustomPropertyWrapper
//
//  Created by Carolane Lefebvre on 09/05/2025.
//

import SwiftUI

struct LoggedExampleView: View {
    @State private var input = ""
    @State private var loggedUsername = ""

    var body: some View {
        VStack(spacing: 20) {
            TextField("Enter name", text: $input)
                .autocapitalization(.none)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)

            Button("Log Username") {
                let model = LoggedModel(input: input)
                loggedUsername = model.username
            }

            Text("Username: \(loggedUsername)")
        }
        .padding()
    }
}


#Preview {
    LoggedExampleView()
}
