//
//  PostSectionController.swift
//  ModelingAndBinding
//
//  Created by B_Litwin on 6/4/18.
//  Copyright © 2018 Ryan Nystrom. All rights reserved.
//

import IGListKit

final class PostSectionController: ListBindingSectionController<Post>, ListBindingSectionControllerDataSource {
    override init() {
        super.init()
        dataSource = self
    }
    
    //Mark: ListBindingSectionControllerDataSource
    
    func sectionController(_ sectionController: ListBindingSectionController<ListDiffable>, viewModelsFor object: Any) -> [ListDiffable] {
        guard let object = object as? Post else { fatalError() }
        let results: [ListDiffable] = [
            UserViewModel(username: object.username, timestamp: object.timestamp),
            ImageViewModel(url: object.imageURL),
            ActionViewModel(likes: object.likes)
        ]
        
        return results + object.comments
    }
    
    func sectionController(
        _ sectionController: ListBindingSectionController<ListDiffable>,
        sizeForViewModel viewModel: Any,
        at index: Int
        ) -> CGSize {
        guard let width = collectionContext?.containerSize.width else { fatalError() }
        let height: CGFloat
        switch viewModel {
        case is ImageViewModel: height = 250
        case is Comment: height = 35
        default: height = 55
        }
        return CGSize(width: width, height: height)
    }
    
}
