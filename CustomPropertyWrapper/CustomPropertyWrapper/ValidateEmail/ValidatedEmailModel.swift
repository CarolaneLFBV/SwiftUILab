//
//  ValidatedEmailModel.swift
//  CustomPropertyWrapper
//
//  Created by Carolane Lefebvre on 09/05/2025.
//

import Foundation

struct ValidatedEmailModel {
    @ValidatedEmail var email: String

    init(email: String) {
        self.email = email
    }
}
