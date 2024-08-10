//
//  Chat.swift
//  ChatViewWithSwiftUi
//
//  Created by 田口真人 on 2024/07/20.
//

import Foundation

struct Chat: Decodable, Identifiable {
    let id: String
    let messages: [Message]
    
    var recentMessageText: String {
        guard let recentMessage = self.messages.last else { return "" }
        return recentMessage.text
    }
    
    var recentMessageDataString: String {
        guard let recentMessage = self.messages.last else { return "" }
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        guard let date = formatter.date(from: recentMessage.date) else { return "" }
        formatter.dateFormat = "MM/dd"
        return formatter.string(from: date)
    }
}
