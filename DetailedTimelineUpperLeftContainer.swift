////
////  DetailedTimelineUpperLeftContainer.swift
////  SampleForPatrick
////
////  Created by Patrick Kepel on 19/07/2016.
////  Copyright © 2016 Reeve Yew. All rights reserved.
////
//
//import UIKit
//
//extension DetailedTimelineContainerView{
//    
//    func setupUpperLeftContainer(){
//        view_UpperLeftContainer.backgroundColor = UIColor.whiteColor()
//        self.view .addSubview(view_UpperLeftContainer)
//        view_UpperLeftContainer.autoPinEdge(.Top, toEdge: .Bottom, ofView: imageView_BackgroundPhoto)
//        view_UpperLeftContainer.autoPinEdgeToSuperviewEdge(.Left, withInset: 0)
//        view_UpperLeftContainer.autoPinEdge(.Right, toEdge: .Left, ofView: view_UpperRightContainer)
//        view_UpperLeftContainer.autoMatchDimension(.Width, toDimension: .Width, ofView: imageView_BackgroundPhoto, withMultiplier: 0.4)
//        Content_UpperLeftContainer()
//        
//    }
//    
//    func Content_UpperLeftContainer(){
//        let label_Day = UILabel.newAutoLayoutView()
//        self.view .addSubview(label_Day)
//        label_Day.textAlignment = NSTextAlignment.Center
//        label_Day.text = "day"
//        label_Day.font = UIFont.systemFontOfSize(10)
//        label_Day.textColor = UIColor.blackColor()
//        label_Day.autoAlignAxis(.Horizontal, toSameAxisOfView: view_UpperLeftContainer, withOffset: -15)
//        label_Day.autoAlignAxis(.Vertical, toSameAxisOfView: view_UpperLeftContainer)
//        
//        
//        let label_Number = UILabel.newAutoLayoutView()
//        self.view .addSubview(label_Number)
//        label_Number.textAlignment = NSTextAlignment.Center
//        label_Number.text = "5"
//        label_Number.font = UIFont.boldSystemFontOfSize(35)
//        label_Number.textColor = UIColor.blackColor()
//        label_Number.autoAlignAxis(.Horizontal, toSameAxisOfView: view_UpperLeftContainer, withOffset: 5)
//        label_Number.autoAlignAxis(.Vertical, toSameAxisOfView: view_UpperLeftContainer)
//        
//    }
//
//}
