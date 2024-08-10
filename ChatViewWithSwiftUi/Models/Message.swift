//
//  Message.swift
//  ChatViewWithSwiftUi
//
//  Created by 田口真人 on 2024/07/20.
//

import Foundation

struct Message: Decodable, Identifiable {
    let id: String
    let text: String
    let user: User
    let date: String
    let readed: Bool
}
