//
//  DetailedTimelineRightContainer.swift
//  SampleForPatrick
//
//  Created by Patrick Kepel on 20/07/2016.
//  Copyright © 2016 Reeve Yew. All rights reserved.
//

import UIKit

extension DetailedTimelineViewController{

    func setupRightContainer(){
        //setup the right container which holds the right top and right bottom containers
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
        
        
        //setup right top container which holds a label and user's caption
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
        
        
        
        
        //setup right bottom container whcih holds the collection view (user's posted pictures)
        view_RightBottomContainer.backgroundColor = UIColor.clearColor()
        view_RightBottomContainer.autoMatchDimension(.Width, toDimension: .Width, ofView: view_RightContainer)
        view_RightBottomContainer.autoMatchDimension(.Height, toDimension: .Height, ofView: view_LeftBottomContainer)
        view_RightBottomContainer.xPinEdgesToSuperview(top: nil, right: 0, bottom: 0, left: 0)
        
        //setup uislider for collectionview
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
