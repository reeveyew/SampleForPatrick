//
//  CollectionView.swift
//  SampleForPatrick
//
//  Created by Patrick Kepel on 14/07/2016.
//  Copyright © 2016 Reeve Yew. All rights reserved.
//

import UIKit

extension DetailedTimelineViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{

    //number of collection view contents horizontally
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 5
    }
    
    //number of collection view contents vertically
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return 2
    }
    
    
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell{
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! DetailedTimelineCollectionViewCell
        
        return cell
    }
    
    
    
    //size of one cell
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        return CGSize(width: 100, height: 95)    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.All
    }
    
    
    //size of spacing between columns
    func collectionView(collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 0
    }
    
    
    //size of spacing between rows
    func collectionView(collectionView: UICollectionView, layout
        collectionViewLayout: UICollectionViewLayout,
        minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(0, 0, 0, 0)
    }


}