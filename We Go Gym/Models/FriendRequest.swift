//
//  FriendRequest.swift
//  We Go Gym
//
//  Created by Troy Parsons on 2024-01-19.
//

import Foundation

struct FriendRequest: Identifiable {
    var id = UUID()
    var senderUID: String
    var receiverUID: String
    var status: FriendRequestStatus
    var timestamp: Date
}

enum FriendRequestStatus {
    case pending
    case accepted
    case daclined
}
