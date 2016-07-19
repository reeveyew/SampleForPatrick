//
//  Autolayout.swift
//  SampleForPatrick
//
//  Created by Reeve Yew on 18/07/2016.
//  Copyright © 2016 Reeve Yew. All rights reserved.
//

import UIKit
import PureLayout

extension UIView {
    
    //MARK:- EDGES
    //auto pin edges in relation to superview
    public func xPinEdgesToSuperview(top top: CGFloat?, right: CGFloat?, bottom:CGFloat?, left: CGFloat?){
        
        if let top = top {
            self.autoPinEdgeToSuperviewEdge(.Top, withInset: top)
        }
        
        if let right = right {
            self.autoPinEdgeToSuperviewEdge(.Right, withInset: right)
        }
        
        if let left = left {
            self.autoPinEdgeToSuperviewEdge(.Left, withInset: left)
        }
        
        if let bottom = bottom {
            self.autoPinEdgeToSuperviewEdge(.Bottom, withInset: bottom)
        }
    }
    
    public func xPinEdges(toView toView: UIView){
        
        self.autoPinEdge(.Top, toEdge: .Top, ofView: toView)
        self.autoPinEdge(.Right, toEdge: .Right, ofView: toView)
        self.autoPinEdge(.Bottom, toEdge: .Bottom, ofView: toView)
        self.autoPinEdge(.Left, toEdge: .Left, ofView: toView)
    }
    
    public func xPinTop(toBottomOfView toBottomOfView: UIView, offset: CGFloat?){
        if let offset = offset {
            self.autoPinEdge(.Top, toEdge: .Bottom, ofView: toBottomOfView, withOffset: offset)
        }//
        else {
            //comit
            self.autoPinEdge(.Top, toEdge: .Bottom, ofView: toBottomOfView)
        }
        
    }
    
    public func xPinBottom(toTopOfView toTopOfView: UIView, offset: CGFloat?){
        if let offset = offset {
            self.autoPinEdge(.Bottom, toEdge: .Top, ofView: toTopOfView, withOffset: offset)
        }//
        else {
            //comit
            self.autoPinEdge(.Bottom, toEdge: .Top, ofView: toTopOfView)
        }
        
    }
    
    public func xPinLeft(toRightOfView: UIView, offset: CGFloat?){
        if let offset = offset {
            self.autoPinEdge(.Left, toEdge: .Right, ofView: toRightOfView, withOffset: offset)
        }
        else {
            self.autoPinEdge(.Left, toEdge: .Right, ofView: toRightOfView)
        }
        
    }

    //MARK:- SIZE
    //set size of the view
    public func xSize(width width:CGFloat?, height:CGFloat?){
        
        if width != nil && height != nil {
            self.autoSetDimensionsToSize(CGSizeMake(width!, height!))
        }
        
        else if let width = width {
            self.autoSetDimension(.Width, toSize: width)
        }
        
        else if let height = height {
            self.autoSetDimension(.Height, toSize: height)
        }
        
    }
    
    //MARK:- MATCHING
    //match height, default multiplier 1, with optional offset
    public func xMatchHeight(toView toView: UIView, multiplier:CGFloat?=nil, offset: CGFloat?=nil){
        
        if let offset = offset {
            self.autoMatchDimension(.Height, toDimension: .Height, ofView: toView, withOffset: offset)
        }
        
        else if let multiplier = multiplier {
            self.autoMatchDimension(.Height, toDimension: .Height, ofView: toView, withMultiplier: multiplier)
        }
        
        else {
            self.autoMatchDimension(.Height, toDimension: .Height, ofView: toView, withMultiplier: 1)

        }
    }
    
    //match width, default multiplier 1, with optional offset
    public func xMatchWidth(toView toView: UIView, multiplier:CGFloat?=nil, offset: CGFloat? = nil) -> NSLayoutConstraint? {
        if let offset = offset {
           return self.autoMatchDimension(.Width, toDimension: .Width, ofView: toView, withOffset: offset)
        }
        
        else if let multiplier = multiplier {
            return self.autoMatchDimension(.Width, toDimension: .Width, ofView: toView, withMultiplier: multiplier)
        }
            
        else {
           return self.autoMatchDimension(.Width, toDimension: .Width, ofView: toView, withMultiplier: 1)
            
        }
    
        
    }
 
    //same size
    public func xSameSize(toView toView: UIView){
        self.autoMatchDimension(.Height, toDimension: .Height, ofView: toView)
        self.autoMatchDimension(.Width, toDimension: .Width, ofView: toView)
    }
    
    //MARK:- ALIGN
    public func xAlignTop(toView toView: UIView){
        self.autoPinEdge(.Top, toEdge: .Top, ofView: toView)
    }
    
    public func xAlignHorizontal(toView toView: UIView, offset: CGFloat?=nil) -> NSLayoutConstraint? {
        if let offset = offset {
            return self.autoAlignAxis(.Horizontal, toSameAxisOfView: toView, withOffset: offset)
        }
            
        else {
            return self.autoAlignAxis(.Horizontal, toSameAxisOfView: toView)
        }
    }
    
    public func xAlignVertical(toView toView: UIView, offset: CGFloat?=nil){
        if let offset = offset {
            self.autoAlignAxis(.Vertical, toSameAxisOfView: toView, withOffset: offset)
        }
            
        else {
            self.autoAlignAxis(.Vertical, toSameAxisOfView: toView)
        }
    }
}

class XLayout {
    //
}