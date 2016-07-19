//
//  NewsfeedCollectionViewCell.swift
//  SampleForPatrick
//
//  Created by Reeve Yew on 19/07/2016.
//  Copyright © 2016 Reeve Yew. All rights reserved.
//

import UIKit

class NewsfeedCollectionViewCell: UICollectionViewCell {
    
    let imageView_LocationPhoto = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        imageView_LocationPhoto.frame = self.bounds
        self.addSubview(imageView_LocationPhoto)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
