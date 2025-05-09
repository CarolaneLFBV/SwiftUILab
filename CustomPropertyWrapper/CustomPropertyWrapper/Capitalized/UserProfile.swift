//
//  UserProfile.swift
//  CustomPropertyWrapper
//
//  Created by Carolane Lefebvre on 09/05/2025.
//

import Foundation

struct UserProfile {
    @Capitalized var firstName: String = "carolane"
    
    init(firstName: String) {
        self.firstName = firstName
    }
}
