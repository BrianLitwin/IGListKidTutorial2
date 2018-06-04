//
//  Post.swift
//  ModelingAndBinding
//
//  Created by B_Litwin on 6/4/18.
//  Copyright © 2018 Ryan Nystrom. All rights reserved.
//

import IGListKit

final class Post: ListDiffable {
    
    // 1
    let username: String
    let timestamp: String
    let imageURL: URL
    let likes: Int
    let comments: [Comment]
    
    // 2
    init(username: String, timestamp: String, imageURL: URL, likes: Int, comments: [Comment]) {
        self.username = username
        self.timestamp = timestamp
        self.imageURL = imageURL
        self.likes = likes
        self.comments = comments
    }
    
    // MARK: ListDiffable
    
    func diffIdentifier() -> NSObjectProtocol {
        return (username + timestamp) as NSObjectProtocol
    }
    
    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        return true
    }
}
