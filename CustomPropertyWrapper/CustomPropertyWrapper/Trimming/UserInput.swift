//
//  UserInput.swift
//  CustomPropertyWrapper
//
//  Created by Carolane Lefebvre on 09/05/2025.
//

import Foundation

struct UserInput {
    @Trimmed var username: String

    init(username: String) {
        self.username = username
    }
}
