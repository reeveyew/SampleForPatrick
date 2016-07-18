//
//  NewsfeedTableViewCell.swift
//  SampleForPatrick
//
//  Created by Reeve Yew on 11/07/2016.
//  Copyright © 2016 Reeve Yew. All rights reserved.
//

import UIKit
import PureLayout

class NewsfeedTableViewCell: UITableViewCell {

    //MARK:- CONTENT VIEW
    //cover photo
    let imageView_CoverPhoto = UIImageView()
    let imageView_CoverPhotoFilter = UIImageView()
    
    //avatar
    let imageView_Avatar = UIImageView()
    let imageView_AvatarBorder = UIImageView()
    
    //location icon
    let imageView_LocationIcon = UIImageView()
    let label_Location = UILabel()
    
    //feed details
    let label_Username = UILabel()
    
    //action button
    let buttonView_Like = UIButton(type: .Custom)
    
    //album header
    let label_locationCenter = UILabel()
    let view_borderTop = UIView()
    let view_borderBottom = UIView()
    
    //MARK:- COLLECTION VIEW
    let imageSlider = UISlider()
    var collectionView :UICollectionView!
    
    //reference to container
    var refContentContainer: UIView!
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String!) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        refContentContainer = imageView_CoverPhoto
        setupContentView()
        setupCollectionView()

    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

      
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
}
