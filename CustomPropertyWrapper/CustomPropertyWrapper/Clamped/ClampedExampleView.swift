//
//  ClampedExampleView.swift
//  CustomPropertyWrapper
//
//  Created by Carolane Lefebvre on 09/05/2025.
//

import SwiftUI

struct ClampedExampleView: View {
    @State private var rawScore = 5

    private var model: ScoreModel {
        ScoreModel(score: rawScore)
    }

    var body: some View {
        VStack {
            Stepper("Score: \(model.score)", value: $rawScore)
        }
        .padding()
    }
}

#Preview {
    ClampedExampleView()
}
