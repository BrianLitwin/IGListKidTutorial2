//
//  Comment.swift
//  ModelingAndBinding
//
//  Created by B_Litwin on 6/4/18.
//  Copyright © 2018 Ryan Nystrom. All rights reserved.
//

import IGListKit

final class Comment: ListDiffable {
    
    let username: String
    let text: String
    
    init(username: String, text: String) {
        self.username = username
        self.text = text
    }
    
    // MARK: ListDiffable
    
    func diffIdentifier() -> NSObjectProtocol {
        return (username + text) as NSObjectProtocol
    }
    
    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        return true
    }
    
}
