////
////  SelectPhotoCollectionView.swift
////  SampleForPatrick
////
////  Created by Patrick Kepel on 18/07/2016.
////  Copyright © 2016 Reeve Yew. All rights reserved.
////
//
//import UIKit
//
//extension SelectPhotoViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
//    
//    //number of collection view contents horizontally
//    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
//        return 10
//    }
//    
//    //number of collection view contents vertically
//    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
//        return 3
//    }
//    
//    
//
//    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell{
//        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("selectphotocell", forIndexPath: indexPath) as! SelectPhotoCollectionViewCell
//        cell .backgroundColor = UIColor.clearColor()
//        return cell
//    }
//    
//    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
//        let selectedCell = colletionView_SelectPhoto.cellForItemAtIndexPath(indexPath)! as! SelectPhotoCollectionViewCell
//        selectedCell.imageview.layer.borderColor = UIColor.clearColor().CGColor
//        print("selected")
//    }
//    
//    func collectionView(collectionView: UICollectionView, didDeselectItemAtIndexPath indexPath: NSIndexPath) {
//        let selectedCell = colletionView_SelectPhoto.cellForItemAtIndexPath(indexPath)! as! SelectPhotoCollectionViewCell
//        selectedCell.imageview.layer.borderColor = UIColor.darkTextColor().CGColor
//        print("deselecte")
//    }
//    
//    
//    
//    
//    
//    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
//        
//        return CGSize(width: 120, height: 120)// The size of one cell
//    }
//    
//    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
//        return UIInterfaceOrientationMask.All
//    }
//    
//    func collectionView(collectionView: UICollectionView,
//                        layout collectionViewLayout: UICollectionViewLayout,
//                               minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat {
//        return -34
//    }
//    
//    func collectionView(collectionView: UICollectionView, layout
//        collectionViewLayout: UICollectionViewLayout,
//        minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat {
//        return x/25
//    }
//
//}
//
