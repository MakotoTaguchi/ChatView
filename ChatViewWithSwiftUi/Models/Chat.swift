//
//  Chat.swift
//  ChatViewWithSwiftUi
//
//  Created by 田口真人 on 2024/07/20.
//

import Foundation

struct Chat: Decodable {
    let id: String
    let messages: [Message]
}
