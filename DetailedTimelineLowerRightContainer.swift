////
////  DetailedTimelineLowerRightContainer.swift
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
//    func setupLowerRightContainer(){
//        view_LowerRightContainer.backgroundColor = UIColor.whiteColor()
//        self.view .addSubview(view_LowerRightContainer)
//        view_LowerRightContainer.autoPinEdgeToSuperviewEdge(.Right, withInset: 0)
//        view_LowerRightContainer.autoPinEdgeToSuperviewEdge(.Bottom, withInset: 0)
//        view_LowerRightContainer.autoPinEdge(.Top, toEdge: .Bottom, ofView: view_UpperRightContainer)
//        view_LowerRightContainer.autoPinEdge(.Top, toEdge: .Top, ofView: view_LowerLeftContainer)
//        content_LowerRightContainer()
//        
//    }
//    
//    
//    func content_LowerRightContainer()
//    {
//        //setup uislider
//        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
//        layout.scrollDirection = UICollectionViewScrollDirection.Vertical
//        layout.itemSize = CGSize(width: 100, height: 100)
//        //setup collectionview
//        let frame = CGRectMake(0, 100, x, 100)
//        collectionView = UICollectionView(frame: frame, collectionViewLayout: layout)
//        self.view .addSubview(collectionView)
//        collectionView.autoSetDimension(.Height, toSize: 280)
//        collectionView.autoSetDimension(.Width, toSize: 190)
//        collectionView.autoAlignAxis(.Horizontal, toSameAxisOfView: view_LowerRightContainer)
//        collectionView.autoAlignAxis(.Vertical, toSameAxisOfView: view_LowerRightContainer)
//        collectionView.registerClass(DetailedTimelineCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
//        collectionView.backgroundColor = UIColor.whiteColor()
//        collectionView.dataSource = self
//        collectionView.delegate = self
//        self.collectionView.collectionViewLayout = layout
//        self.collectionView.userInteractionEnabled = true
//        print(collectionView.frame)
//        
//    }
//}
