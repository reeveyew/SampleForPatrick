//
//  CollectionTableView.swift
//  SampleForPatrick
//
//  Created by Patrick Kepel on 13/07/2016.
//  Copyright © 2016 Reeve Yew. All rights reserved.
//

import UIKit

extension NewsfeedViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UIScrollViewDelegate {
    
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    //number of collection view contents
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        
        return 10//tableCell.array_Images.count
    }
    
    
    // setup random color for the collectionview cells
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell{
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("NewsfeedCollectionViewCell", forIndexPath: indexPath) as! NewsfeedCollectionViewCell
        
        cell.imageView_LocationPhoto.image = self.array_Images[indexPath.row]
        
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, canFocusItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    func collectionView(collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    
    
    
    
    //MARK:- HIGHLIGHT IMAGE
    func animateCollectionCellToCenter(scrollView: UIScrollView){
        print("animateCollectionCellToCenter")
//        print(scrollView.contentOffset)
        
        let touchPoint: CGPoint = scrollView.convertPoint(CGPointMake(scrollView.contentOffset.x, 0), toView: self.tableView_Newsfeed)
        let indexPath: NSIndexPath = self.tableView_Newsfeed.indexPathForRowAtPoint(touchPoint)!
        
        //get current table cell
        let tableCell = tableView_Newsfeed.cellForRowAtIndexPath(indexPath) as! NewsfeedTableViewCell
        let indexArray = tableCell.collectionView.indexPathsForVisibleItems()
        let sortedIndexArray = indexArray.sort {$0.row < $1.row}
        
        //get center collectionview cell
        
        //scale the image
        let centerX = scrollView.contentOffset.x + (x/2)
        var centerImageCell: NewsfeedCollectionViewCell!
        var closestX:CGFloat = 0
        var lastIndex = 0
        
        for var i = 0; i < sortedIndexArray.count; i++ {
            
            let imageCell = tableCell.collectionView.cellForItemAtIndexPath(sortedIndexArray[i])! as! NewsfeedCollectionViewCell
            let cellFromCenterX = imageCell.center.x - centerX
            
            if i == 0 {
                closestX = cellFromCenterX
                centerImageCell = imageCell
            }
            
//            print("cellFromCenterX: \(cellFromCenterX)")
            if cellFromCenterX <= 0 && closestX >= 0 {
                if (closestX + cellFromCenterX <= 0){
                    closestX = cellFromCenterX
                    centerImageCell = imageCell
                }
            }
                
            else if cellFromCenterX <= 0 && closestX <= 0 {
                if (closestX - cellFromCenterX) <= 0 {
                    closestX = cellFromCenterX
                    centerImageCell = imageCell
                }
            }
                
            else if cellFromCenterX >= 0 && closestX <= 0 {
                if (closestX + cellFromCenterX <= 0) {
                    closestX = cellFromCenterX
                    centerImageCell = imageCell
                }
            }
                
            else if cellFromCenterX >= 0 && closestX >= 0 {
                if (closestX - cellFromCenterX >= 0) {
                    closestX = cellFromCenterX
                    centerImageCell = imageCell
                }
            }
//            print("closestX: \(closestX)")
            lastIndex = i
            self.animatedCollectionCell = centerImageCell
            
            if lastIndex == sortedIndexArray.count - 1 {
                UIView.animateWithDuration(0.5) {
                    tableCell.collectionView.contentOffset.x = CGRectGetMinX(centerImageCell.frame) - (x/5*2)
                    let scale = CGAffineTransformMakeScale(1.1, 1.1)
                    centerImageCell.transform = CGAffineTransformTranslate(scale, 0, -2)
                    centerImageCell.backgroundColor = UIColor.blackColor()
                    tableCell.collectionView.bringSubviewToFront(centerImageCell)
                    tableCell.imageView_CoverPhoto.image = centerImageCell.imageView_LocationPhoto.image
                }
            }
        } //end loop
        

    }
    
    func scrollViewDidEndDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        if decelerate == false && self.canCallScrollViewDidEndDragging == true {
            animateCollectionCellToCenter(scrollView)
        }
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        if self.canCallScrollViewDidEndDragging == true {
            animateCollectionCellToCenter(scrollView)
        }
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        let touchPoint: CGPoint = collectionView.convertPoint(CGPointMake(collectionView.contentOffset.x, 0), toView: self.tableView_Newsfeed)
        let tableIndexPath: NSIndexPath = self.tableView_Newsfeed.indexPathForRowAtPoint(touchPoint)!
        
        //get current table cell
        let tableCell = tableView_Newsfeed.cellForRowAtIndexPath(tableIndexPath) as! NewsfeedTableViewCell
        
        let selectedCell = collectionView.cellForItemAtIndexPath(indexPath)! as! NewsfeedCollectionViewCell
        
        self.animatedCollectionCell = selectedCell
        
        UIView.animateWithDuration(0.5) {
            let scale = CGAffineTransformMakeScale(1.1, 1.1)
            selectedCell.transform = CGAffineTransformTranslate(scale, 0, -2)
            tableCell.collectionView.bringSubviewToFront(selectedCell)
            tableCell.imageView_CoverPhoto.image = selectedCell.imageView_LocationPhoto.image
        }
    }
    
    //MARK:- UNHIGHLIGHT IMAGE
    func unHighlightImage(){
        self.canCallScrollViewDidEndDragging = true
        
        if let animatedCollectionCell = self.animatedCollectionCell {
            UIView.animateWithDuration(1) {
                animatedCollectionCell.transform = CGAffineTransformIdentity
                animatedCollectionCell.backgroundColor = UIColor.randomColor()
            }
        }
    }
    
    func collectionView(collectionView: UICollectionView, didDeselectItemAtIndexPath indexPath: NSIndexPath) {
        unHighlightImage()
    }
    
    func scrollViewWillBeginDragging(scrollView: UIScrollView) {
        unHighlightImage()
    }
}