////
////  DetailedTimelineContainerView.swift
////  SampleForPatrick
////
////  Created by Patrick Kepel on 19/07/2016.
////  Copyright © 2016 Reeve Yew. All rights reserved.
////
//
//import UIKit
//
//extension DetailedTimelineViewController{
//    
//    func display() {
//        self.view.addSubview(imageView_BackgroundPhoto)
////        self.view.addSubview(view_UpperRightContainer)
////        self.view.addSubview(view_UpperLeftContainer)
////        self.view.addSubview(view_LowerLeftContainer)
////        self.view.addSubview(view_LowerRightContainer)
//        setupBackgroundPhoto()
//        setupLeftSideContainer()
////        setupUpperLeftContainer()
////        setupLowerLeftContainer()
//        setupRightSideContainer()
//    }
//    
//    func setupBackgroundPhoto(){
//        //setup the background picture for detaled timeline
//        imageView_BackgroundPhoto.image = UIImage(named: "beach.jpg")
//        imageView_BackgroundPhoto.autoSetDimension(.Height, toSize: 300)
//        imageView_BackgroundPhoto.autoPinEdge(.Bottom, toEdge: .Top, ofView: view_LeftSideContainer)
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
//        button_Globe.autoAlignAxis(.Horizontal, toSameAxisOfView: button_Back, withOffset: 235)
//        button_Globe.xSize(width: 25, height: 25)
//    }
//    
//    func setupLeftSideContainer(){
//        view_LeftSideContainer.backgroundColor = UIColor.blackColor()
//        self.view.addSubview(view_LeftSideContainer)
//        view_LeftSideContainer.addSubview(view_UpperLeftContainer)
//        view_LeftSideContainer.addSubview(view_LowerLeftContainer)
//        view_LeftSideContainer.xPinEdgesToSuperview(top: nil, right: nil, bottom: 0, left: 0)
//        view_LeftSideContainer.xPinTop(toBottomOfView: imageView_BackgroundPhoto, offset: 0)
//        view_LeftSideContainer.autoMatchDimension(.Width, toDimension: .Width, ofView: imageView_BackgroundPhoto, withMultiplier: 0.4)
//        view_LeftSideContainer.autoPinEdge(.Right, toEdge: .Left, ofView: view_RightSideContainer)
//        setupUpperLeftContainer()
//        setupLowerLeftContainer()
//    }
//    
//    func setupRightSideContainer(){
//        view_RightSideContainer.backgroundColor = UIColor.blackColor()
//        self.view.addSubview(view_RightSideContainer)
//        view_RightSideContainer.addSubview(view_UpperRightContainer)
//        view_RightSideContainer.addSubview(view_LowerRightContainer)
//        view_RightSideContainer.xPinEdgesToSuperview(top: nil, right: 0, bottom: 0, left: nil)
//        view_RightSideContainer.xPinTop(toBottomOfView: imageView_BackgroundPhoto, offset: 0)
//        view_RightSideContainer.xPinLeft(view_LeftSideContainer, offset: 0)
//        setupUpperRightContainer()
//        setupLowerRightContainer()
//    }
//    
//    
//        func setupUpperLeftContainer(){
//            view_UpperLeftContainer.backgroundColor = UIColor.whiteColor()
//            view_UpperLeftContainer.xPinEdgesToSuperview(top: 0, right: 0, bottom: nil, left: 0)
//            view_UpperLeftContainer.autoPinEdge(.Right, toEdge: .Left, ofView: view_UpperRightContainer)
//            
//            let label_Day = UILabel.newAutoLayoutView()
//            view_UpperLeftContainer.addSubview(label_Day)
//            label_Day.textAlignment = NSTextAlignment.Right
//            label_Day.text = "day"
//            label_Day.font = UIFont.systemFontOfSize(10)
//            label_Day.textColor = UIColor.blackColor()
//            label_Day.autoAlignAxis(.Horizontal, toSameAxisOfView: view_UpperLeftContainer, withOffset: -5)
//            label_Day.autoAlignAxis(.Vertical, toSameAxisOfView: view_UpperLeftContainer, withOffset: 30)
//            
//            
//            let label_Number = UILabel.newAutoLayoutView()
//            view_UpperLeftContainer.addSubview(label_Number)
//            label_Number.textAlignment = NSTextAlignment.Right
//            label_Number.text = "5"
//            label_Number.font = UIFont.boldSystemFontOfSize(35)
//            label_Number.textColor = UIColor.blackColor()
//            label_Number.autoAlignAxis(.Horizontal, toSameAxisOfView: view_UpperLeftContainer, withOffset: 15)
//            label_Number.autoAlignAxis(.Vertical, toSameAxisOfView: view_UpperLeftContainer, withOffset: 30)
//        }
//    
//
//    func setupLowerLeftContainer(){
//        view_LowerLeftContainer.backgroundColor = UIColor.whiteColor()
//        view_LeftSideContainer.addSubview(view_LowerLeftContainer)
//        view_LowerLeftContainer.xPinEdgesToSuperview(top: nil, right: nil, bottom: 0, left: 0)
//        view_LowerLeftContainer.autoPinEdgeToSuperviewEdge(.Left, withInset: 0)
////        view_LowerLeftContainer.autoPinEdgeToSuperviewEdge(.Bottom, withInset: 0)
//        view_LowerLeftContainer.autoPinEdge(.Top, toEdge: .Bottom, ofView: view_UpperLeftContainer)
//        view_LowerLeftContainer.autoPinEdge(.Right, toEdge: .Left, ofView: view_LowerRightContainer)
//        view_LowerLeftContainer.autoMatchDimension(.Width, toDimension: .Width, ofView: view_UpperLeftContainer)
//        configureTableView()
//        
//        
//        let border_Line = UIView()
//        border_Line.backgroundColor = UIColor.lightGrayColor()
//        view_LowerLeftContainer.addSubview(border_Line)
//        border_Line.xSize(width: 0.5, height: nil)
//        border_Line.xPinEdgesToSuperview(top: -20, right: nil, bottom: 15, left: 35)
//        
//        let imageView_Location = UIImageView()
//        imageView_Location.image = UIImage(named:"small-location.png")
//        view_LowerLeftContainer.addSubview(imageView_Location)
//        imageView_Location.xSize(width: 20, height: 20)
//        imageView_Location.xPinEdgesToSuperview(top: nil, right: nil, bottom: nil, left: 25)
//        imageView_Location.xPinBottom(toTopOfView: border_Line, offset: 0)
//    }
//    
//        func setupUpperRightContainer(){
//            view_UpperRightContainer.backgroundColor = UIColor.whiteColor()
//            view_RightSideContainer.addSubview(view_UpperRightContainer)
//            view_UpperRightContainer.autoPinEdge(.Top, toEdge: .Bottom, ofView: imageView_BackgroundPhoto)
//            view_UpperRightContainer.autoPinEdge(.Left, toEdge: .Right, ofView: view_UpperLeftContainer)
//            view_UpperRightContainer.autoPinEdgeToSuperviewEdge(.Right, withInset: 0)
//            view_UpperLeftContainer.autoPinEdge(.Top, toEdge: .Bottom, ofView: imageView_BackgroundPhoto)
//            view_UpperRightContainer.autoMatchDimension(.Height, toDimension: .Height, ofView: view_LowerRightContainer, withMultiplier: 0.2)
//            
//            
//            let label_Location = UILabel.newAutoLayoutView()
//            view_UpperRightContainer.addSubview(label_Location)
//            label_Location.textAlignment = NSTextAlignment.Center
//            label_Location.text = "TRAVELING MALAYSIA"
//            label_Location.font = UIFont.boldSystemFontOfSize(15)
//            label_Location.textColor = UIColor.blackColor()
//            label_Location.autoAlignAxis(.Horizontal, toSameAxisOfView: view_UpperRightContainer, withOffset: 2)
//            label_Location.autoAlignAxis(.Vertical, toSameAxisOfView: view_UpperRightContainer, withOffset: -15)
//            
//            let textfield_Caption = UITextField.newAutoLayoutView()
//            view_UpperRightContainer.addSubview(textfield_Caption)
//            textfield_Caption.textAlignment = NSTextAlignment.Left
//            textfield_Caption.font = UIFont.systemFontOfSize(10)
//            textfield_Caption.attributedPlaceholder = NSAttributedString(string:"Caption goes here...",attributes:[NSForegroundColorAttributeName: UIColor.blackColor()])
//            textfield_Caption.autoAlignAxis(.Horizontal, toSameAxisOfView: view_UpperRightContainer, withOffset: 20)
//            textfield_Caption.autoAlignAxis(.Vertical, toSameAxisOfView: view_UpperRightContainer, withOffset: -45)
//        }
//    
//    
//        func setupLowerRightContainer(){
//            view_LowerRightContainer.backgroundColor = UIColor.whiteColor()
//            view_RightSideContainer.addSubview(view_LowerRightContainer)
//            view_LowerRightContainer.autoPinEdgeToSuperviewEdge(.Right, withInset: 0)
//            view_LowerRightContainer.autoPinEdgeToSuperviewEdge(.Bottom, withInset: 0)
//            view_LowerRightContainer.autoPinEdge(.Top, toEdge: .Bottom, ofView: view_UpperRightContainer)
//            view_LowerRightContainer.autoPinEdge(.Top, toEdge: .Top, ofView: view_LowerLeftContainer)
//            
//            //setup uislider
//            let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
//            layout.scrollDirection = UICollectionViewScrollDirection.Vertical
//            layout.itemSize = CGSize(width: 100, height: 100)
//            //setup collectionview
//            let frame = CGRectMake(0, 100, x, 100)
//            collectionView = UICollectionView(frame: frame, collectionViewLayout: layout)
//            view_LowerRightContainer.addSubview(collectionView)
//            collectionView.autoSetDimension(.Height, toSize: 280)
//            collectionView.autoSetDimension(.Width, toSize: 190)
//            collectionView.autoAlignAxis(.Horizontal, toSameAxisOfView: view_LowerRightContainer)
//            collectionView.autoAlignAxis(.Vertical, toSameAxisOfView: view_LowerRightContainer)
//            collectionView.registerClass(DetailedTimelineCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
//            collectionView.backgroundColor = UIColor.clearColor()
//            collectionView.dataSource = self
//            collectionView.delegate = self
//            self.collectionView.collectionViewLayout = layout
//            self.collectionView.userInteractionEnabled = true
//            print(collectionView.frame)
//        }
//
//}
