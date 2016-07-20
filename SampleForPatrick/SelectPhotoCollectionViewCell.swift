//
//  SelectPhotoCollectionViewCell.swift
//  SampleForPatrick
//
//  Created by Patrick Kepel on 19/07/2016.
//  Copyright © 2016 Reeve Yew. All rights reserved.
//

import UIKit

class SelectPhotoCollectionViewCell: UICollectionViewCell {
    
    let imageview = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.contentView.addSubview(imageview)
        imageview.xPinEdgesToSuperview(top: 0, right: 0, bottom: 0, left: 0)
        imageview.backgroundColor = UIColor.greenColor()
        let image = UIImage(named:"beach.jpg")!
        imageview.image = image
        imageview.layer.borderColor = UIColor.blackColor().CGColor
        imageview.layer.borderWidth = 5
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
