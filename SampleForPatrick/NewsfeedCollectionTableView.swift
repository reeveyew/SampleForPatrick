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
        return 10
    }
    
    
    // setup random color for the collectionview cells
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell{
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath)
        cell.backgroundColor = UIColor.randomColor()
        
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, canFocusItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    func collectionView(collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    
    
    func scrollViewWillBeginDragging(scrollView: UIScrollView) {
        self.canCallScrollViewDidEndDragging = true
        
        if let animatedCollectionCell = self.animatedCollectionCell {
            UIView.animateWithDuration(1) {
                animatedCollectionCell.transform = CGAffineTransformIdentity
                animatedCollectionCell.backgroundColor = UIColor.randomColor()
            }
        }

        
        
    }
    
    
    func scrollViewDidEndDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        if decelerate == false && self.canCallScrollViewDidEndDragging == true {
            animateCollectionCellToCenter(scrollView)
        }
    }
    

    
    func animateCollectionCellToCenter(scrollView: UIScrollView){
        print("animateCollectionCellToCenter")
//        print(scrollView.contentOffset)
        
        let touchPoint: CGPoint = scrollView.convertPoint(CGPointMake(scrollView.contentOffset.x, 0), toView: self.tableView_Newsfeed)
        let indexPath: NSIndexPath = self.tableView_Newsfeed.indexPathForRowAtPoint(touchPoint)!
        
        //get current table cell
        let tableCell = tableView_Newsfeed.cellForRowAtIndexPath(indexPath) as! NewsfeedTableViewCell
        let images = tableCell.collectionView.indexPathsForVisibleItems()
        
        //get center collectionview cell
        
        //scale the image
        let centerX = scrollView.contentOffset.x + (x/2)
        var centerImageCell: UICollectionViewCell!
        var closestX:CGFloat = 0
        var lastIndex = 0
        for  var i = 0; i < images.count; i++ {
            
            let imageCell = tableCell.collectionView.cellForItemAtIndexPath(images[i])! as UICollectionViewCell
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
            
            if lastIndex == images.count - 1 {
                UIView.animateWithDuration(1) {
                    tableCell.collectionView.contentOffset.x = CGRectGetMinX(centerImageCell.frame) - (x/5*2)
                    let scale = CGAffineTransformMakeScale(1.1, 1.1)
                    centerImageCell.transform = CGAffineTransformTranslate(scale, 0, -2)
                    centerImageCell.backgroundColor = UIColor.blackColor()
                    tableCell.collectionView.bringSubviewToFront(centerImageCell)
                }
            }
        } //end loop
        

    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        if self.canCallScrollViewDidEndDragging == true {
            animateCollectionCellToCenter(scrollView)
        }
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        if scrollView.contentOffset.x == scrollView.contentSize.width - x {
            print("SCROLLED TO THE END")
            self.canCallScrollViewDidEndDragging = false
            
            let touchPoint: CGPoint = scrollView.convertPoint(CGPointMake(scrollView.contentOffset.x, 0), toView: self.tableView_Newsfeed)
            let indexPath: NSIndexPath = self.tableView_Newsfeed.indexPathForRowAtPoint(touchPoint)!
            
            //get current table cell
            let tableCell = tableView_Newsfeed.cellForRowAtIndexPath(indexPath) as! NewsfeedTableViewCell
            let indexArray = tableCell.collectionView.indexPathsForVisibleItems()
            
            var sortedIndexArray = indexArray.sort {$0.row < $1.row}
            
            let last3CollectionCell = tableCell.collectionView.cellForItemAtIndexPath(sortedIndexArray[sortedIndexArray.count - 3])! as UICollectionViewCell
            
            self.animatedCollectionCell = last3CollectionCell
            
            UIView.animateWithDuration(1) {
                tableCell.collectionView.contentOffset.x = scrollView.contentSize.width - x
                let scale = CGAffineTransformMakeScale(1.1, 1.1)
                last3CollectionCell.transform = CGAffineTransformTranslate(scale, 0, -2)
                tableCell.collectionView.bringSubviewToFront(last3CollectionCell)
            }
        }
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        let selectedItem = collectionView.cellForItemAtIndexPath(indexPath)! as UICollectionViewCell
        
        self.animatedCollectionCell = selectedItem
        
        UIView.animateWithDuration(1) {
            let scale = CGAffineTransformMakeScale(1.1, 1.1)
            selectedItem.transform = CGAffineTransformTranslate(scale, 0, -2)
            collectionView.bringSubviewToFront(selectedItem)
        }
    }
}