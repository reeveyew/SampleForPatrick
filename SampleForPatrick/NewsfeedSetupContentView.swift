//
//  ContentView.swift
//  SampleForPatrick
//
//  Created by Reeve Yew on 18/07/2016.
//  Copyright © 2016 Reeve Yew. All rights reserved.
//

import UIKit

extension NewsfeedTableViewCell {
 
    
    
    func setupContentView()
    {
        
        setupAlbumCoverPhoto()
        setupAlbumHeader()
        
        setupAvatar()
        setupFeedDetails()
        setupActionButtons()
        setupLocationIcon()
    }
    
   

    
    func setupAlbumCoverPhoto()
    {
        //setup cover photo
        self.addSubview(imageView_CoverPhoto)
        self.addSubview(imageView_CoverPhotoFilter)
        
        imageView_CoverPhoto.backgroundColor = UIColor.clearColor()
        imageView_CoverPhoto.image = UIImage(named:"newsfeed-cover-dummy")
        imageView_CoverPhoto.xSize(width: nil, height: 380)
        imageView_CoverPhoto.xPinEdgesToSuperview(top: 0, right: 0, bottom: nil, left: 0)
        imageView_CoverPhoto.contentMode = .ScaleAspectFill
        
        imageView_CoverPhotoFilter.image = UIImage(named: "Main Cover Photo Dark Filter")
        imageView_CoverPhotoFilter.xPinEdges(toView: imageView_CoverPhoto)
        
    }

    
    func setupAlbumHeader(){
        //setup the label that's placed in the center of the page
        
        self.addSubview(label_AlbumHeader)
        self.addSubview(view_BorderTop)
        self.addSubview(view_BorderBottom)
        
        self.addSubview(label_PreviousLocation)
        self.addSubview(label_NextLocation)
        self.addSubview(label_HiddenLocation)
        
        label_AlbumHeader.textAlignment = NSTextAlignment.Center
        label_AlbumHeader.text = "LONDON TRIP"
        label_AlbumHeader.font = UIFont(name: "TwCenMT-CondensedBold", size: 30)
        label_AlbumHeader.textColor = UIColor.whiteColor()
        label_AlbumHeader.xAlignVertical(toView: refContentContainer)
        label_AlbumHeader.xAlignHorizontal(toView: refContentContainer, offset: 30)
        label_AlbumHeader.alpha = 0.9
        
        //upper border displayed above the label in the center
        view_BorderTop.backgroundColor = UIColor.whiteColor()
        view_BorderTop.xPinBottom(toTopOfView: label_AlbumHeader, offset: -10)
//        self.borderWidthConstraint = view_BorderTop.xMatchWidth(toView: label_AlbumHeader, multiplier: 1.2)
        view_BorderTop.xSize(width: 160, height: 2)
        view_BorderTop.xAlignVertical(toView: label_AlbumHeader)
        
        
        //lower border displayed below the label in the center
        view_BorderBottom.backgroundColor = UIColor.whiteColor()
        view_BorderBottom.xPinTop(toBottomOfView: label_AlbumHeader, offset: 10)
        view_BorderBottom.xSameSize(toView: view_BorderTop)
        view_BorderBottom.xAlignVertical(toView: view_BorderTop)
        
        label_PreviousLocation.textAlignment = NSTextAlignment.Center
        label_PreviousLocation.text = "HARRODS"
        label_PreviousLocation.font = UIFont(name: "TwCenMT-CondensedBold", size: 30)
        label_PreviousLocation.textColor = UIColor.whiteColor()
        label_PreviousLocation.alpha = 0.8
        label_PreviousLocation.xAlignVertical(toView: refContentContainer)
        label_PreviousLocation.xAlignHorizontal(toView: refContentContainer, offset: 30)
        
        label_NextLocation.textAlignment = NSTextAlignment.Center
        label_NextLocation.text = "BIG BEN"
        label_NextLocation.font = UIFont(name: "TwCenMT-CondensedBold", size: 15)
        label_NextLocation.textColor = UIColor.whiteColor()
        label_NextLocation.alpha = 0.8
        label_NextLocation.xAlignVertical(toView: refContentContainer)
            label_NextLocation.xAlignHorizontal(toView: refContentContainer, offset: 30 + 45)
        
        label_HiddenLocation.textAlignment = NSTextAlignment.Center
        label_HiddenLocation.text = "ZOO"
        label_HiddenLocation.font = UIFont(name: "TwCenMT-CondensedBold", size: 15)
        label_HiddenLocation.textColor = UIColor.whiteColor()
        label_HiddenLocation.alpha = 0.8
        label_HiddenLocation.xAlignVertical(toView: refContentContainer)
        label_HiddenLocation.xAlignHorizontal(toView: refContentContainer, offset: -15)
        label_HiddenLocation.alpha = 0
        
        
        //transform
        label_PreviousLocation.transform = CGAffineTransformScale(CGAffineTransformMakeTranslation(0, -45), 0.5, 0.5)
        label_HiddenLocation.transform = CGAffineTransformMakeTranslation(0, -45)
    }

    func setupAvatar(){
        
        //setup the profile picture display (small circle)
        self.addSubview(imageView_AvatarBorder)
        self.addSubview(imageView_Avatar)
        
        imageView_Avatar.image = UIImage(named:"profile pic")
        imageView_Avatar.xPinEdgesToSuperview(top: 35, right: nil, bottom: nil, left: 20)
        imageView_Avatar.xSize(width: 40, height: 40)
        imageView_Avatar.layer.borderWidth = 0.5
        imageView_Avatar.layer.masksToBounds = true
        imageView_Avatar.layer.borderColor = UIColor.clearColor().CGColor
        imageView_Avatar.layer.cornerRadius = 20
        
        imageView_AvatarBorder.image = UIImage(named: "profile pic border")
        imageView_AvatarBorder.xMatchWidth(toView: imageView_Avatar, offset: 18)
        imageView_AvatarBorder.xMatchHeight(toView: imageView_Avatar, offset: 18)
        imageView_AvatarBorder.xAlignHorizontal(toView: imageView_Avatar)
        imageView_AvatarBorder.xAlignVertical(toView: imageView_Avatar)
    }
    
    
    func setupFeedDetails(){
        //username displayed next to the profile picture
        
        label_Username.textAlignment = NSTextAlignment.Center
        label_Username.text = "Lilly Carson"
        label_Username.font = UIFont(name: "TwCenMT-Regular", size: 17)
        label_Username.textColor = UIColor.whiteColor()
        self.addSubview(label_Username)
        label_Username.xAlignHorizontal(toView: imageView_Avatar, offset: -7)
        label_Username.xAlignVertical(toView: imageView_Avatar, offset: 80)
    }

    
    func setupActionButtons(){
        //button like displayed on the upper right corner
        buttonView_Like.setImage(UIImage(named:"like icon"), forState: .Normal)
        self.addSubview(buttonView_Like)
        buttonView_Like.xAlignHorizontal(toView: label_Username)
        buttonView_Like.xPinEdgesToSuperview(top: nil, right: 20, bottom: nil, left: nil)
        buttonView_Like.xSize(width: 25, height: 25)
    }

    func setupLocationIcon(){
        
        
        self.addSubview(imageView_LocationIcon)
        self.addSubview(label_Location)
        
        //location icon displayed in the lower left corner
        imageView_LocationIcon.image = UIImage(named:"location pin")
        imageView_LocationIcon.xPinEdgesToSuperview(top: nil, right: nil, bottom: nil, left: 20)
        imageView_LocationIcon.autoPinEdge(.Bottom, toEdge: .Bottom, ofView: refContentContainer, withOffset: -35)
        imageView_LocationIcon.xSize(width: 50, height: 50)
        imageView_LocationIcon.contentMode = .ScaleAspectFit
        
        
        //label around the location icon displayed
        label_Location.textAlignment = NSTextAlignment.Center
        label_Location.text = "8"
        label_Location.font = UIFont(name: "TwCenMT-Regular", size: 18)
        label_Location.textColor = UIColor.whiteColor()
        
        label_Location.xAlignHorizontal(toView: imageView_LocationIcon, offset: -3)
        label_Location.xAlignVertical(toView: imageView_LocationIcon, offset: 0)
        
    }

    
    
}