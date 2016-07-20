//
//  DetailedTimelineLeftContainer.swift
//  SampleForPatrick
//
//  Created by Patrick Kepel on 20/07/2016.
//  Copyright © 2016 Reeve Yew. All rights reserved.
//

import UIKit

extension DetailedTimelineViewController{

    func setupLeftContainer(){
        //setup the left side container which holds left top & left bottom containers
        view_LeftContainer.backgroundColor = UIColor.whiteColor()
        self.view.addSubview(view_LeftContainer)
        view_LeftContainer.addSubview(view_LeftTopContainer)
        view_LeftContainer.addSubview(view_LeftBottomContainer)
        view_LeftContainer.xPinEdgesToSuperview(top: nil, right: nil, bottom: 0, left: 0)
        view_LeftContainer.autoMatchDimension(.Width, toDimension: .Width, ofView: imageView_Background, withMultiplier: 0.4)
        view_LeftContainer.xPinTop(toBottomOfView: imageView_Background, offset: 0)
        
        
        //setup the left top container which holds label 'day' and its number
        view_LeftTopContainer.backgroundColor = UIColor.clearColor()
        view_LeftTopContainer.autoMatchDimension(.Width, toDimension: .Width, ofView: view_LeftContainer)
        view_LeftTopContainer.autoMatchDimension(.Height, toDimension: .Height, ofView: view_LeftContainer, withMultiplier: 0.2)
        view_LeftTopContainer.xPinEdgesToSuperview(top: 0, right: 0, bottom: 0, left: nil)
        
        let label_Day = UILabel.newAutoLayoutView()
        view_LeftTopContainer.addSubview(label_Day)
        label_Day.textAlignment = NSTextAlignment.Right
        label_Day.text = "day"
        label_Day.font = UIFont.systemFontOfSize(10)
        label_Day.textColor = UIColor.blackColor()
        label_Day.autoAlignAxis(.Horizontal, toSameAxisOfView: view_LeftTopContainer, withOffset: -5)
        label_Day.autoAlignAxis(.Vertical, toSameAxisOfView: view_LeftTopContainer, withOffset: 30)
        
        let label_Number = UILabel.newAutoLayoutView()
        view_LeftTopContainer.addSubview(label_Number)
        label_Number.textAlignment = NSTextAlignment.Right
        label_Number.text = "5"
        label_Number.font = UIFont.boldSystemFontOfSize(35)
        label_Number.textColor = UIColor.blackColor()
        label_Number.autoAlignAxis(.Horizontal, toSameAxisOfView: view_LeftTopContainer, withOffset: 15)
        label_Number.autoAlignAxis(.Vertical, toSameAxisOfView: view_LeftTopContainer, withOffset: 30)
        
        
        
        //setup the left bottom container which holds the tableview, left-side border, and small location imageview
        view_LeftBottomContainer.backgroundColor = UIColor.clearColor()
        view_LeftBottomContainer.autoMatchDimension(.Width, toDimension: .Width, ofView: view_LeftContainer)
        view_LeftBottomContainer.xPinEdgesToSuperview(top: nil, right: 0, bottom: 0, left: 0)
        view_LeftBottomContainer.xPinTop(toBottomOfView: view_LeftTopContainer, offset: 0)
        
        configureTableView()
        
        let border_Left = UIView()
        border_Left.backgroundColor = UIColor.lightGrayColor()
        view_LeftBottomContainer.addSubview(border_Left)
        border_Left.xSize(width: 0.5, height: nil)
        border_Left.xPinEdgesToSuperview(top: -20, right: nil, bottom: 15, left: 35)
        
        let imageView_SmallLocation = UIImageView()
        imageView_SmallLocation.image = UIImage(named:"small-location.png")
        view_LeftBottomContainer.addSubview(imageView_SmallLocation)
        imageView_SmallLocation.xSize(width: 20, height: 20)
        imageView_SmallLocation.xPinEdgesToSuperview(top: nil, right: nil, bottom: nil, left: 25)
        imageView_SmallLocation.xPinBottom(toTopOfView: border_Left, offset: 0)
    }
}
