//
//  CommentCell.swift
//  ModelingAndBinding
//
//  Created by Ryan Nystrom on 8/18/17.
//  Copyright © 2017 Ryan Nystrom. All rights reserved.
//

import UIKit

final class CommentCell: UICollectionViewCell {

    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!

    // MARK: ListBindable
    
    func bindViewModel(_ viewModel: Any) {
        guard let viewModel = viewModel as? Comment else { return }
        usernameLabel.text = viewModel.username
        commentLabel.text = viewModel.text
    }

    
}
