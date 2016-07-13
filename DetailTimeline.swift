//
//  HomeTimeline.swift
//  SampleForPatrick
//
//  Created by Patrick Kepel on 13/07/2016.
//  Copyright © 2016 Reeve Yew. All rights reserved.
//

import UIKit
import PureLayout

class DetailTimeline: UIViewController {
    let imageView_BackgroundPhoto = UIImageView()
    let view_RightContainer = UIView()
    let view_LeftContainer = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        display()
    }
    
    func display(){
        self.view .addSubview(imageView_BackgroundPhoto)
        self.view .addSubview(view_RightContainer)
        self.view .addSubview(view_LeftContainer)
        setupBackgroundPhoto()
        setupLeftContainer()
        setupRightContainer()
        distributeContainers()
    }
    
    func setupBackgroundPhoto(){
        imageView_BackgroundPhoto.image = UIImage(named: "paris.jpg")
        imageView_BackgroundPhoto.autoSetDimension(.Height, toSize: 300)
        imageView_BackgroundPhoto.autoPinEdgeToSuperviewEdge(.Left, withInset: 0)
        imageView_BackgroundPhoto.autoPinEdgeToSuperviewEdge(.Right, withInset: 0)
        imageView_BackgroundPhoto.autoPinEdgeToSuperviewEdge(.Top, withInset: 0)
        //autupinedge with containers (both left and right)
    }
    
    func setupRightContainer(){
        view_RightContainer.backgroundColor = UIColor.redColor()
        view_RightContainer.autoPinEdgeToSuperviewEdge(.Right, withInset:0)
        view_RightContainer.autoPinEdgeToSuperviewEdge(.Bottom, withInset: 0)
        
        view_RightContainer.autoPinEdge(.Top, toEdge: .Bottom, ofView: imageView_BackgroundPhoto)
        
    }
    
    func setupLeftContainer(){
        view_LeftContainer.backgroundColor = UIColor.blueColor()

        view_LeftContainer.autoPinEdgeToSuperviewEdge(.Left, withInset:0)
        view_LeftContainer.autoPinEdgeToSuperviewEdge(.Bottom, withInset: 0)
        
        
//        view_LeftContainer.autoPinEdge(.Top, toEdge: .Top, ofView: view_RightContainer)
        
       //view_LeftContainer.autoPinEdge(.Right, toEdge: .Left, ofView: view_RightContainer)
    }
    
    func distributeContainers(){
        let views: NSArray = [view_RightContainer, view_LeftContainer]
        views.autoAlignViewsToEdge(.Top)
        views.autoDistributeViewsAlongAxis(.Horizontal, alignedTo: .Horizontal, withFixedSpacing: 0, insetSpacing: false, matchedSizes: true)
        self.view_LeftContainer.autoAlignAxisToSuperviewAxis(.Horizontal)
        views.autoDistributeViewsAlongAxis(.Horizontal, alignedTo: .Horizontal, withFixedSize: 100)
        
        
    }
    
    
}
