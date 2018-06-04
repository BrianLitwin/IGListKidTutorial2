//
//  UserViewModel.swift
//  ModelingAndBinding
//
//  Created by B_Litwin on 6/4/18.
//  Copyright © 2018 Ryan Nystrom. All rights reserved.
//

import UIKit
import IGListKit

class UserViewModel: ListDiffable {
    let username: String
    let timestamp: String
    
    init(username: String, timestamp: String) {
        self.username = username
        self.timestamp = timestamp
    }
    
    // MARK: ListDiffable
    
    func diffIdentifier() -> NSObjectProtocol {
        return "user" as NSObjectProtocol
    }
    
    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        guard let object = object as? UserViewModel else  { return false }
        return username == object.username
            && timestamp == object.timestamp
    }
}


final class ImageViewModel: ListDiffable {
    
    let url: URL
    
    init(url: URL) {
        self.url = url
    }
    
    // MARK: ListDiffable
    
    func diffIdentifier() -> NSObjectProtocol {
        return "image" as NSObjectProtocol
    }
    
    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        guard let object = object as? ImageViewModel else { return false }
        return url == object.url
    }
    
}

final class ActionViewModel: ListDiffable {
    
    let likes: Int
    
    init(likes: Int) {
        self.likes = likes
    }
    
    // MARK: ListDiffable
    
    func diffIdentifier() -> NSObjectProtocol {
        return "action" as NSObjectProtocol
    }
    
    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        guard let object = object as? ActionViewModel else { return false }
        return likes == object.likes
    }
    
}
