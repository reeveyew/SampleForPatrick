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
    let label_AlbumHeader = UILabel()
    let view_BorderTop = UIView()
    let view_BorderBottom = UIView()
    let label_PreviousLocation = UILabel()
    let label_NextLocation = UILabel()
    let label_HiddenLocation = UILabel()
    
    //MARK:- COLLECTION VIEW
    let imageSlider = UISlider()
    var collectionView :UICollectionView!
    
    //reference to container
    var refContentContainer: UIView!

    //transformation
    var locations = ["HARRODS", "BIG BEN", "LONDON BRIDGE", "TOWER BRIDGE", "HEAVEN"]
    var headerWidth:CGFloat = 0
    var didClickAnimationForFirstTime = false
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String!) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        self.prepareForReuse()
        
        refContentContainer = imageView_CoverPhoto
        
        setupContentView()
        setupCollectionView()

    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.view_BorderTop.frame.size.height = 2
        
        UIView.animateWithDuration(0.3, delay: 0.2, options: .CurveEaseOut, animations: {
            
            var scaledWidth:CGFloat
            
            if self.headerWidth == 0 && self.didClickAnimationForFirstTime == false {
                
                scaledWidth = self.label_AlbumHeader.frame.width * 1.1
                
            } else {
                
                if self.headerWidth < 100 {
                    scaledWidth = self.headerWidth * 2.7
                } else {
                    scaledWidth = self.headerWidth * 2.5
                }
                
            }
            
            self.view_BorderTop.frame.size.width = scaledWidth
            self.view_BorderTop.center = CGPointMake(self.label_AlbumHeader.center.x, self.label_AlbumHeader.center.y - 25)
            
            self.view_BorderBottom.frame.size = self.view_BorderTop.frame.size
            self.view_BorderBottom.center = CGPointMake(self.label_AlbumHeader.center.x, self.label_AlbumHeader.center.y + 25)
            
         
            
            }, completion: nil)
        
        
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

      
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
}
