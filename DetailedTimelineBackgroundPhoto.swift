//////
//////  DetailedTimelineBackgroundPhoto.swift
//////  SampleForPatrick
//////
//////  Created by Patrick Kepel on 19/07/2016.
//////  Copyright © 2016 Reeve Yew. All rights reserved.
//////
////
//import UIKit
//
//extension DetailedTimelineViewController{
//    
//    func setupBackgroundPhoto(){
//        //setup the background picture for detaled timeline
//        imageView_BackgroundPhoto.image = UIImage(named: "beach.jpg")
//        imageView_BackgroundPhoto.autoSetDimension(.Height, toSize: 300)
//        imageView_BackgroundPhoto.autoPinEdge(.Bottom, toEdge: .Top, ofView: view_UpperLeftContainer)
//        imageView_BackgroundPhoto.xPinEdgesToSuperview(top: 0, right: 0, bottom: nil, left: 0)
//        
//        //setup the back button for detailed timeline page
//        let button_Back = UIButton.newAutoLayoutView()
//        button_Back.setImage(UIImage(named:"back-button.png"), forState: .Normal)
//        self.view .addSubview(button_Back)
//        button_Back.xPinEdgesToSuperview(top: 20, right: nil, bottom: nil, left: 20)
//        button_Back.xSize(width: 25, height: 25)
//        
//        
//        //setup the edit button for detailed timeline page
//        let button_Edit = UIButton.newAutoLayoutView()
//        button_Edit.setImage(UIImage(named:"edit-button.png"), forState: .Normal)
//        self.view .addSubview(button_Edit)
//        button_Edit.xPinEdgesToSuperview(top: 20, right: 20, bottom: nil, left: nil)
//        button_Edit.xSize(width: 25, height: 25)
//        
//        
//        //setup the globe
//        let button_Globe : UIButton
//        button_Globe = UIButton.newAutoLayoutView()
//        button_Globe.setImage(UIImage(named:"world.png"), forState: .Normal)
//        self.view .addSubview(button_Globe)
//        button_Globe.xPinEdgesToSuperview(top: nil, right: nil, bottom: nil, left: 22)
//        button_Globe.autoAlignAxis(.Horizontal, toSameAxisOfView: button_Back, withOffset: 220)
//        button_Globe.xSize(width: 25, height: 25)
//    }
//    
//    
//        func setupUpperLeftContainer(){
//            view_UpperLeftContainer.backgroundColor = UIColor.whiteColor()
//            self.view .addSubview(view_UpperLeftContainer)
//            view_UpperLeftContainer.autoPinEdge(.Top, toEdge: .Bottom, ofView: imageView_BackgroundPhoto)
//            view_UpperLeftContainer.autoPinEdgeToSuperviewEdge(.Left, withInset: 0)
//            view_UpperLeftContainer.autoPinEdge(.Right, toEdge: .Left, ofView: view_UpperRightContainer)
//            view_UpperLeftContainer.autoMatchDimension(.Width, toDimension: .Width, ofView: imageView_BackgroundPhoto, withMultiplier: 0.4)
//            Content_UpperLeftContainer()
//    
//        }
//    
//        func Content_UpperLeftContainer(){
//            let label_Day = UILabel.newAutoLayoutView()
//            self.view .addSubview(label_Day)
//            label_Day.textAlignment = NSTextAlignment.Center
//            label_Day.text = "day"
//            label_Day.font = UIFont.systemFontOfSize(10)
//            label_Day.textColor = UIColor.blackColor()
//            label_Day.autoAlignAxis(.Horizontal, toSameAxisOfView: view_UpperLeftContainer, withOffset: -15)
//            label_Day.autoAlignAxis(.Vertical, toSameAxisOfView: view_UpperLeftContainer)
//    
//    
//            let label_Number = UILabel.newAutoLayoutView()
//            self.view .addSubview(label_Number)
//            label_Number.textAlignment = NSTextAlignment.Center
//            label_Number.text = "5"
//            label_Number.font = UIFont.boldSystemFontOfSize(35)
//            label_Number.textColor = UIColor.blackColor()
//            label_Number.autoAlignAxis(.Horizontal, toSameAxisOfView: view_UpperLeftContainer, withOffset: 5)
//            label_Number.autoAlignAxis(.Vertical, toSameAxisOfView: view_UpperLeftContainer)
//            
//        }
//}
