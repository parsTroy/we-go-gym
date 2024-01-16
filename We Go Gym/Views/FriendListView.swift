//
//  FriendListView.swift
//  We Go Gym
//
//  Created by Troy Parsons on 2024-01-19.
//

import SwiftUI

struct FriendListView: View {
    
    var friends: [UserProfile]
    
    var body: some View {
        List(friends, id: \.uid) { friend in
            Text(friend.username)
        }
    }
}
