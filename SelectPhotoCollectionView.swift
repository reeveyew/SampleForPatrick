//
//  SelectPhotoCollectionView.swift
//  SampleForPatrick
//
//  Created by Patrick Kepel on 18/07/2016.
//  Copyright © 2016 Reeve Yew. All rights reserved.
//

import UIKit

extension SelectPhotoViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    //number of collection view contents horizontally
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 4
    }
    
    //number of collection view contents vertically
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return 3
    }
    
    

    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell{
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("selectphotocell", forIndexPath: indexPath)
        cell .backgroundColor = UIColor.clearColor()
        
        let imageview = UIImageView()
        cell.contentView.addSubview(imageview)
        imageview.image = UIImage(named: "beach.jpg")
        imageview.xPinEdgesToSuperview(top: 0, right: 0, bottom: 0, left: 0)
        imageview.backgroundColor = UIColor.greenColor()

        imageview.layer.borderColor = UIColor.darkTextColor().CGColor
        imageview.layer.borderWidth = 3
        
        //        if (imageview.selected){
        
        
        //        if(imageview.selected){
        //            imageview.layer.borderWidth = 10;
        //            imageview.layer.borderColor = UIColor.darkGrayColor().CGColor
        //        }
        //        else
        //        {
        //            imageview.layer.borderColor = UIColor .clearColor().CGColor;
        //        }
//        if (imageview.selected){
        
        
//        if(imageview.selected){
//            imageview.layer.borderWidth = 10;
//            imageview.layer.borderColor = UIColor.darkGrayColor().CGColor
//        }
//        else
//        {
//            imageview.layer.borderColor = UIColor .clearColor().CGColor;
//        }
        

        return cell
    }
    
    
    
    
    
    
    
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        return CGSize(width: 100, height: 100)// The size of one cell
    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.All
    }
    
    func collectionView(collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                               minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 35
    }
    
    func collectionView(collectionView: UICollectionView, layout
        collectionViewLayout: UICollectionViewLayout,
        minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 35
    }

}

