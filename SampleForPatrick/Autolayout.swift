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
    func xPinEdgesToSuperview(top top: CGFloat?, right: CGFloat?, bottom:CGFloat?, left: CGFloat?){
        
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
    
}