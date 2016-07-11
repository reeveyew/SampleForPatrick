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
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String!) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        imageView_CoverPhoto.frame = CGRectMake(0, 0, x, 200)
        imageView_CoverPhoto.backgroundColor = UIColor.yellowColor()
        self.addSubview(imageView_CoverPhoto)
        

        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
