//
//  NewsfeedCollectionView.swift
//  SampleForPatrick
//
//  Created by Reeve Yew on 18/07/2016.
//  Copyright © 2016 Reeve Yew. All rights reserved.
//

import UIKit

extension NewsfeedTableViewCell {
    
    func setupCollectionView()
    {
        //setup uislider
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = UICollectionViewScrollDirection.Horizontal
        layout.itemSize = CGSize(width: x/5, height: 80)
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        
        //setup collectionview
        let frame = CGRectMake(0, 0, 0, 0)
        collectionView = UICollectionView(frame: frame, collectionViewLayout: layout)
        self.addSubview(collectionView)
        self.collectionView.registerClass(NewsfeedCollectionViewCell.self, forCellWithReuseIdentifier: "NewsfeedCollectionViewCell")
        
        collectionView.xSize(width: x, height: 100)
        collectionView.xPinEdgesToSuperview(top: nil, right: 0, bottom: 40, left: 0)
        collectionView.xPinTop(toBottomOfView: imageView_CoverPhoto, offset: -30)
        
        self.collectionView.backgroundColor = UIColor.clearColor()
        self.collectionView.collectionViewLayout = layout
        self.collectionView.userInteractionEnabled = true
        self.collectionView.showsHorizontalScrollIndicator = false
        self.collectionView.allowsSelection = true
        
        self.collectionView.contentInset = UIEdgeInsetsZero
        self.collectionView.scrollIndicatorInsets = UIEdgeInsetsZero
        self.collectionView.contentOffset = CGPointZero
        
        
        

    }

}