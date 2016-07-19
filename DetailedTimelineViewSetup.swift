//
//  DetailedTimelineViewControllerBasic.swift
//  SampleForPatrick
//
//  Created by Patrick Kepel on 19/07/2016.
//  Copyright © 2016 Reeve Yew. All rights reserved.
//

import UIKit

extension DetailedTimelineViewController {
    func display() {
        setupBackgroundPhoto()
        setupLeftContainer()
        setupRightContainer()
        
    }
    
    func setupBackgroundPhoto(){
        //setup the background picture for detaled timeline
        imageView_Background.image = UIImage(named: "beach.jpg")
        self.view.addSubview(imageView_Background)
        imageView_Background.backgroundColor = UIColor.blueColor()
        imageView_Background.autoSetDimension(.Height, toSize: 300)
        imageView_Background.xPinEdgesToSuperview(top: 0, right: 0, bottom: nil, left: 0)
        
        //setup the back button for detailed timeline page
        let button_Back = UIButton.newAutoLayoutView()
        button_Back.setImage(UIImage(named:"back-button.png"), forState: .Normal)
        self.view .addSubview(button_Back)
        button_Back.xPinEdgesToSuperview(top: 20, right: nil, bottom: nil, left: 20)
        button_Back.xSize(width: 25, height: 25)
        
        
        //setup the edit button for detailed timeline page
        let button_Edit = UIButton.newAutoLayoutView()
        button_Edit.setImage(UIImage(named:"edit-button.png"), forState: .Normal)
        self.view .addSubview(button_Edit)
        button_Edit.xPinEdgesToSuperview(top: 20, right: 20, bottom: nil, left: nil)
        button_Edit.xSize(width: 25, height: 25)
        
        
        //setup the globe
        let button_Globe : UIButton
        button_Globe = UIButton.newAutoLayoutView()
        button_Globe.setImage(UIImage(named:"world.png"), forState: .Normal)
        self.view .addSubview(button_Globe)
        button_Globe.xPinEdgesToSuperview(top: nil, right: nil, bottom: nil, left: 22)
        button_Globe.autoAlignAxis(.Horizontal, toSameAxisOfView: button_Back, withOffset: 235)
        button_Globe.xSize(width: 25, height: 25)
    }

    func setupLeftContainer(){
        view_LeftContainer.backgroundColor = UIColor.whiteColor()
        self.view.addSubview(view_LeftContainer)
        view_LeftContainer.addSubview(view_LeftTopContainer)
        view_LeftContainer.addSubview(view_LeftBottomContainer)
        view_LeftContainer.xPinEdgesToSuperview(top: nil, right: nil, bottom: 0, left: 0)
        view_LeftContainer.autoMatchDimension(.Width, toDimension: .Width, ofView: imageView_Background, withMultiplier: 0.4)
        view_LeftContainer.xPinTop(toBottomOfView: imageView_Background, offset: 0)
        
        
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
        
        
        
        
        view_LeftBottomContainer.backgroundColor = UIColor.clearColor()
        view_LeftBottomContainer.autoMatchDimension(.Width, toDimension: .Width, ofView: view_LeftContainer)
        view_LeftBottomContainer.xPinEdgesToSuperview(top: nil, right: 0, bottom: 0, left: 0)
        view_LeftBottomContainer.xPinTop(toBottomOfView: view_LeftTopContainer, offset: 0)
        configureTableView()
        
        let border_Line = UIView()
        border_Line.backgroundColor = UIColor.lightGrayColor()
        view_LeftBottomContainer.addSubview(border_Line)
        border_Line.xSize(width: 0.5, height: nil)
        border_Line.xPinEdgesToSuperview(top: -20, right: nil, bottom: 15, left: 35)
        
        let imageView_Location = UIImageView()
        imageView_Location.image = UIImage(named:"small-location.png")
        view_LeftBottomContainer.addSubview(imageView_Location)
        imageView_Location.xSize(width: 20, height: 20)
        imageView_Location.xPinEdgesToSuperview(top: nil, right: nil, bottom: nil, left: 25)
        imageView_Location.xPinBottom(toTopOfView: border_Line, offset: 0)
    }
    
    
    
    
    func setupRightContainer(){
        view_RightContainer.backgroundColor = UIColor.whiteColor()
        self.view.addSubview(view_RightContainer)
        view_RightContainer.layer.shadowColor = UIColor.lightGrayColor().CGColor
        view_RightContainer.layer.shadowOpacity = 25
        view_RightContainer.layer.shadowOffset = CGSizeZero
        view_RightContainer.layer.shadowRadius = 10
        view_RightContainer.addSubview(view_RightTopContainer)
        view_RightContainer.addSubview(view_RightBottomContainer)
        view_RightContainer.xPinEdgesToSuperview(top: nil, right: 0, bottom: 0, left: nil)
        view_RightContainer.xPinTop(toBottomOfView: imageView_Background, offset: 0)
        view_RightContainer.xPinLeft(view_LeftContainer, offset: 0)
        
        
        view_RightTopContainer.backgroundColor = UIColor.clearColor()
        view_RightTopContainer.autoMatchDimension(.Width, toDimension: .Width, ofView: view_RightContainer)
        view_RightTopContainer.autoMatchDimension(.Height, toDimension: .Height, ofView: view_LeftTopContainer)
        view_RightTopContainer.xPinEdgesToSuperview(top: 0, right: 0, bottom: nil, left: 0)
        let label_Location = UILabel.newAutoLayoutView()
        view_RightTopContainer.addSubview(label_Location)
        label_Location.textAlignment = NSTextAlignment.Center
        label_Location.text = "TRAVELING MALAYSIA"
        label_Location.font = UIFont.boldSystemFontOfSize(15)
        label_Location.textColor = UIColor.blackColor()
        label_Location.autoAlignAxis(.Horizontal, toSameAxisOfView: view_RightTopContainer, withOffset: 2)
        label_Location.autoAlignAxis(.Vertical, toSameAxisOfView: view_RightTopContainer, withOffset: -15)
        
        let textfield_Caption = UITextField.newAutoLayoutView()
        view_RightTopContainer.addSubview(textfield_Caption)
        textfield_Caption.textAlignment = NSTextAlignment.Left
        textfield_Caption.font = UIFont.systemFontOfSize(10)
        textfield_Caption.attributedPlaceholder = NSAttributedString(string:"Caption goes here...",attributes:[NSForegroundColorAttributeName: UIColor.blackColor()])
        textfield_Caption.autoAlignAxis(.Horizontal, toSameAxisOfView: view_RightTopContainer, withOffset: 20)
        textfield_Caption.autoAlignAxis(.Vertical, toSameAxisOfView: view_RightTopContainer, withOffset: -45)

        
        
        
        view_RightBottomContainer.backgroundColor = UIColor.clearColor()
        view_RightBottomContainer.autoMatchDimension(.Width, toDimension: .Width, ofView: view_RightContainer)
        view_RightBottomContainer.autoMatchDimension(.Height, toDimension: .Height, ofView: view_LeftBottomContainer)
        view_RightBottomContainer.xPinEdgesToSuperview(top: nil, right: 0, bottom: 0, left: 0)
        //setup uislider
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = UICollectionViewScrollDirection.Vertical
        layout.itemSize = CGSize(width: 100, height: 100)
        //setup collectionview
        let frame = CGRectMake(0, 100, x, 100)
        collectionView = UICollectionView(frame: frame, collectionViewLayout: layout)
        view_RightBottomContainer.addSubview(collectionView)
        collectionView.autoSetDimension(.Height, toSize: 280)
        collectionView.autoSetDimension(.Width, toSize: 200)
        collectionView.autoAlignAxis(.Horizontal, toSameAxisOfView: view_RightBottomContainer)
        collectionView.autoAlignAxis(.Vertical, toSameAxisOfView: view_RightBottomContainer)
        collectionView.registerClass(DetailedTimelineCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        collectionView.backgroundColor = UIColor.clearColor()
        collectionView.dataSource = self
        collectionView.delegate = self
        self.collectionView.collectionViewLayout = layout
        self.collectionView.userInteractionEnabled = true
        print(collectionView.frame)
    }

    
}

