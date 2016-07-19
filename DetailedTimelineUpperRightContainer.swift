////
////  DetailedTimelineUpperRightContainer.swift
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
//    //setup of the container that holds the location and caption labels e.g: BIG BEN..... etc
//    func setupUpperRightContainer(){
//        view_UpperRightContainer.backgroundColor = UIColor.whiteColor()
//        self.view .addSubview(view_UpperRightContainer)
//        view_UpperRightContainer.autoPinEdge(.Top, toEdge: .Bottom, ofView: imageView_BackgroundPhoto)
//        view_UpperRightContainer.autoPinEdge(.Left, toEdge: .Right, ofView: view_UpperLeftContainer)
//        view_UpperRightContainer.autoPinEdgeToSuperviewEdge(.Right, withInset: 0)
//        view_UpperLeftContainer.autoPinEdge(.Top, toEdge: .Bottom, ofView: imageView_BackgroundPhoto)
//        view_UpperRightContainer.autoMatchDimension(.Height, toDimension: .Height, ofView: view_LowerRightContainer, withMultiplier: 0.2)
//        Content_UpperRightContainer()
//        
//    }
//    
//    func Content_UpperRightContainer(){
//        let label_Location = UILabel.newAutoLayoutView()
//        self.view .addSubview(label_Location)
//        label_Location.textAlignment = NSTextAlignment.Center
//        label_Location.text = "TRAVELING MALAYSIA"
//        label_Location.font = UIFont.boldSystemFontOfSize(15)
//        label_Location.textColor = UIColor.blackColor()
//        label_Location.autoAlignAxis(.Horizontal, toSameAxisOfView: view_UpperRightContainer, withOffset: -8)
//        label_Location.autoAlignAxis(.Vertical, toSameAxisOfView: view_UpperRightContainer, withOffset: -22)
//        
//        let textfield_Caption = UITextField.newAutoLayoutView()
//        self.view .addSubview(textfield_Caption)
//        textfield_Caption.textAlignment = NSTextAlignment.Left
//        textfield_Caption.font = UIFont.systemFontOfSize(10)
//        textfield_Caption.attributedPlaceholder = NSAttributedString(string:"Caption goes here...",attributes:[NSForegroundColorAttributeName: UIColor.blackColor()])
//        textfield_Caption.autoAlignAxis(.Horizontal, toSameAxisOfView: view_UpperRightContainer, withOffset: 8)
//        textfield_Caption.autoAlignAxis(.Vertical, toSameAxisOfView: view_UpperRightContainer, withOffset: -52)
//    }
//}
