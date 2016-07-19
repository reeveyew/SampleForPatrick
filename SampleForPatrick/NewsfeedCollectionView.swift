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
        
        cell.imageView_LocationPhoto.layer.shadowColor = UIColor.grayColor().CGColor
        cell.imageView_LocationPhoto.layer.shadowOffset = CGSizeMake(0, 1)
        cell.imageView_LocationPhoto.layer.shadowOpacity = 1
        cell.imageView_LocationPhoto.layer.shadowRadius = 3
        cell.imageView_LocationPhoto.layer.shouldRasterize = true
        cell.imageView_LocationPhoto.layer.rasterizationScale = UIScreen.mainScreen().scale
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
        let tableCell = self.getCurrentTableCell(scrollView: scrollView)
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

            lastIndex = i
            self.animatedCollectionCell = centerImageCell
            
            if lastIndex == sortedIndexArray.count - 1 {
                
                UIView.animateWithDuration(0.5) {
                    tableCell.collectionView.contentOffset.x = CGRectGetMinX(centerImageCell.frame) - (x/5*2)
                }
                
                animateCollectionViewAndCoverPhoto(tableCell: tableCell, selectedCollectionCell: centerImageCell, completion: { (finished) in
                    
                    print("didClickAnimationForFirstTime")
                    tableCell.didClickAnimationForFirstTime = true
                    
                    self.albumHeaderAnimateDownCompletion(tableCell)
                })
            }
        } //end loop
        

    }
    
    func scrollViewDidEndDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        
        //check scroling direction
        if (self.lastContentOffset.x > scrollView.contentOffset.x || self.lastContentOffset.x < scrollView.contentOffset.x){
            self.scrollDirection = .Horizontal;
        }
            
        else if self.lastContentOffset.y < scrollView.contentOffset.y || self.lastContentOffset.y >  scrollView.contentOffset.y {
            self.scrollDirection = .Vertical
        }

        
        if decelerate == false && self.canCallScrollViewDidEndDragging == true && self.scrollDirection == .Horizontal {
            print("scrollViewDidEndDragging")
            animateCollectionCellToCenter(scrollView)
        }
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        if self.canCallScrollViewDidEndDragging == true && self.scrollDirection == .Horizontal {
            print("scrollViewDidEndDecelerating")
            animateCollectionCellToCenter(scrollView)
        }
    }
    
    
    
    //MARK:- CORE ANIMATION
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        let tableCell = getCurrentTableCell(collectionView: collectionView)
        let selectedCollectionCell = collectionView.cellForItemAtIndexPath(indexPath)! as! NewsfeedCollectionViewCell
        
        self.animatedCollectionCell = selectedCollectionCell
        
        
        self.animateCollectionViewAndCoverPhoto(tableCell: tableCell, selectedCollectionCell: selectedCollectionCell) { (finished) in
            
            print("didClickAnimationForFirstTime")
            tableCell.didClickAnimationForFirstTime = true
            
            self.albumHeaderAnimateDownCompletion(tableCell)
            
            
        }
    }

    //
    func animateCollectionViewAndCoverPhoto(tableCell tableCell: NewsfeedTableViewCell, selectedCollectionCell: NewsfeedCollectionViewCell, completion: (finished:Bool) -> Void){
        
        tableCell.imageView_CoverPhoto.alpha = 0.5
        
        UIView.animateWithDuration(0.5, animations: {
            
            self.albumHeaderAnimateDown(tableCell)
            
            let scale = CGAffineTransformMakeScale(1.1, 1.1)
            selectedCollectionCell.transform = CGAffineTransformTranslate(scale, 0, -2)
            tableCell.collectionView.bringSubviewToFront(selectedCollectionCell)
            tableCell.imageView_CoverPhoto.image = selectedCollectionCell.imageView_LocationPhoto.image
            tableCell.imageView_CoverPhoto.alpha = 1
            
        }) { (done) in
            completion(finished: true)
        }
    }
    
    //MARK:- ANIMATE ALBUM HEADER
    func albumHeaderAnimateDown(tableCell: NewsfeedTableViewCell){
        tableCell.label_HiddenLocation.alpha = 0.8
        tableCell.label_HiddenLocation.transform = CGAffineTransformIdentity
        
        tableCell.label_AlbumHeader.transform = CGAffineTransformScale(CGAffineTransformMakeTranslation(0, 40), 0.5, 0.5)
        tableCell.label_AlbumHeader.alpha = 0.8
    
        tableCell.label_NextLocation.transform =  CGAffineTransformScale(CGAffineTransformMakeTranslation(0, 20), 0.5, 0.5)
        tableCell.label_NextLocation.alpha = 0
        //
        tableCell.label_PreviousLocation.transform = CGAffineTransformIdentity
        tableCell.label_PreviousLocation.alpha = 0.9
    
    }
    
    func albumHeaderCompletionSetup(tableCell: NewsfeedTableViewCell, label: UILabel){
        let lastLocationIndex = tableCell.locations.count - 1
        let locationsArray = tableCell.locations
        
        //label_NextLocation
        if label.tag - 1 >= 0 {
            //next index
            let newIndex = label.tag - 1
            label.tag = newIndex
            label.text = locationsArray[newIndex]
        } else {
            //go to last count
            label.tag = lastLocationIndex
            label.text = locationsArray[lastLocationIndex]
        }

    }
    
    func albumHeaderAnimateDownCompletion(tableCell: NewsfeedTableViewCell){
        
        let label_NextLocation = tableCell.label_NextLocation
        self.albumHeaderCompletionSetup(tableCell, label: label_NextLocation)
        label_NextLocation.transform = CGAffineTransformIdentity
        label_NextLocation.alpha = 0.8
        
        let label_AlbumHeader = tableCell.label_AlbumHeader
        self.albumHeaderCompletionSetup(tableCell, label: label_AlbumHeader)
        label_AlbumHeader.transform = CGAffineTransformIdentity
        label_AlbumHeader.alpha = 0.9
        
        let label_PreviousLocation = tableCell.label_PreviousLocation
        self.albumHeaderCompletionSetup(tableCell, label: label_PreviousLocation)
        label_PreviousLocation.transform = CGAffineTransformScale(CGAffineTransformMakeTranslation(0, -40), 0.5, 0.5)
        label_PreviousLocation.alpha = 0.8
        
        let label_HiddenLocation = tableCell.label_HiddenLocation
        self.albumHeaderCompletionSetup(tableCell, label: label_HiddenLocation)
        label_HiddenLocation.alpha = 0
        label_HiddenLocation.transform = CGAffineTransformMakeTranslation(0, -15)
        
        tableCell.headerWidth = tableCell.label_PreviousLocation.frame.size.width

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
        
        self.lastContentOffset = scrollView.contentOffset
        unHighlightImage()
    }
    
    func getCurrentTableCell(collectionView collectionView: UICollectionView?=nil, scrollView: UIScrollView?=nil) -> NewsfeedTableViewCell {

        var touchPoint = CGPoint()
        
        if let collectionView = collectionView {
            touchPoint = collectionView.convertPoint(CGPointMake(collectionView.contentOffset.x, 0), toView: self.tableView_Newsfeed)
        }
        if let scrollView = scrollView {
            touchPoint = scrollView.convertPoint(CGPointMake(scrollView.contentOffset.x, 0), toView: self.tableView_Newsfeed)
        }
        
        let tableIndexPath: NSIndexPath = self.tableView_Newsfeed.indexPathForRowAtPoint(touchPoint)!
        
        //get current table cell
        return tableView_Newsfeed.cellForRowAtIndexPath(tableIndexPath) as! NewsfeedTableViewCell
    }

}

