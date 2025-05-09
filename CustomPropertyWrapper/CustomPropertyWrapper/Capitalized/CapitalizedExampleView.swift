//
//  CapitalizedExampleVIew.swift
//  CustomPropertyWrapper
//
//  Created by Carolane Lefebvre on 09/05/2025.
//

import SwiftUI

struct CapitalizedExampleView: View {
    @State private var input = ""
    
    private var capitalizedInput: UserProfile {
        UserProfile(firstName: input)
    }


    var body: some View {
        VStack(spacing: 20) {
            TextField("Type something", text: $input)
                .autocapitalization(.none)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)

            VStack(alignment: .leading, spacing: 8) {
                Text("Capitalized result: \(capitalizedInput.firstName)")
                Text("Uncapitalized result: \(input)")
            }
            .foregroundStyle(.gray)
        }
        .padding()
    }
}

#Preview {
    CapitalizedExampleView()
}
