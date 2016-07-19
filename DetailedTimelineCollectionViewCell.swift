//
//  DetailedTimelineCollectionViewCell.swift
//  SampleForPatrick
//
//  Created by Patrick Kepel on 14/07/2016.
//  Copyright © 2016 Reeve Yew. All rights reserved.
//

import UIKit

class DetailedTimelineCollectionViewCell: UICollectionViewCell {
    let imageView_Photo = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.contentView.addSubview(imageView_Photo)
        
        imageView_Photo.xPinEdgesToSuperview(top: 0, right: 0, bottom: 0, left: 0)
        imageView_Photo.backgroundColor = UIColor.greenColor()
//        let image = UIImage(named:"beach1.jpg")!
//        imageView_Photo.image = image
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
