//
//  NewsfeedTableViewCell.swift
//  SampleForPatrick
//
//  Created by Reeve Yew on 11/07/2016.
//  Copyright © 2016 Reeve Yew. All rights reserved.
//

import UIKit

class NewsfeedTableViewCell: UITableViewCell {

    let imageView_CoverPhoto = UIImageView()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        imageView_CoverPhoto.frame = CGRectMake(0, 0, x, 200)
        imageView_CoverPhoto.backgroundColor = UIColor.yellowColor()
        self.addSubview(imageView_CoverPhoto)
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
