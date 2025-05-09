//
//  LoggedModel.swift
//  CustomPropertyWrapper
//
//  Created by Carolane Lefebvre on 09/05/2025.
//

import Foundation

struct LoggedModel {
    @Logged(label: "Username") var username: String = ""

    init(input: String) {
        self.username = input
    }
}
