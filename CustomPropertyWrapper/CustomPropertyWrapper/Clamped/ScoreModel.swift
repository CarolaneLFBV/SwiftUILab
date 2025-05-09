//
//  ScoreModel.swift
//  CustomPropertyWrapper
//
//  Created by Carolane Lefebvre on 09/05/2025.
//

import Foundation

struct ScoreModel {
    @Clamped(0...20) var score: Int = 0

    init(score: Int) {
        self.score = score
    }
}
