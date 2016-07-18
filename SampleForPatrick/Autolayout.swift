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
    public func xMatchHeight(with toView: UIView, multiplier:CGFloat = 1, offset: CGFloat?=nil){
        
        if let offset = offset {
            self.autoMatchDimension(.Height, toDimension: .Height, ofView: toView, withOffset: offset)
        } else {
            self.autoMatchDimension(.Height, toDimension: .Height, ofView: toView, withMultiplier: multiplier)
        }
    }
    
    //match width, default multiplier 1, with optional offset
    public func xMatchWidth(with toView: UIView, multiplier:CGFloat = 1, offset: CGFloat? = nil){
        if let offset = offset {
            self.autoMatchDimension(.Width, toDimension: .Height, ofView: toView, withOffset: offset)
        } else {
            self.autoMatchDimension(.Width, toDimension: .Height, ofView: toView, withMultiplier: multiplier)
        }
    }
 
    //same size
    public func xSameSize(toView: UIView){
        self.autoMatchDimension(.Height, toDimension: .Height, ofView: toView)
        self.autoMatchDimension(.Width, toDimension: .Width, ofView: toView)
    }
    
    //MARK:- ALIGN
    public func xAlignTop(with toView: UIView){
        self.autoPinEdge(.Top, toEdge: .Top, ofView: toView)
    }
    
}

class XLayout {
    //
}