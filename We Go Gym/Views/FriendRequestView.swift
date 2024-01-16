//
//  FriendRequestView.swift
//  We Go Gym
//
//  Created by Troy Parsons on 2024-01-19.
//

import SwiftUI

struct FriendRequestView: View {
    
    var receiverUID: String
    var currentUserUID: String
    
    var body: some View {
        Button("Send Friend Request") {
            sendFriendRequest(senderUID: currentUserUID, receiverUID: receiverUID) { error in
                if let error = error {
                    // Handle error
                } else {
                    // Friend request sent sucessfully
                }
            }
        }
    }
}
