////
////  DetailedTimelineBackgroundPhoto.swift
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
//}
