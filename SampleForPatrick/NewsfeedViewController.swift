//
//  ViewController.swift
//  SampleForPatrick
//
//  Created by Reeve Yew on 11/07/2016.
//  Copyright © 2016 Reeve Yew. All rights reserved.
//

import UIKit

let x = UIScreen.mainScreen().bounds.size.width
let y = UIScreen.mainScreen().bounds.size.height



class NewsfeedViewController: UIViewController {

    var tableView_Newsfeed = UITableView()
    var animatedCollectionCell:UICollectionViewCell!
    var canCallScrollViewDidEndDragging = true
    
    //scroll view
    var scrollDirection = ScrollDirection.None
    
    enum ScrollDirection {
        case None
        case Horizontal
        case Vertical
    }
    
    var lastContentOffset:CGPoint!
    
    var array_Images = [UIImage]()
    
    let navbarView = UIView()
    let navTitleLabel2 = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        array_Images = self.generateImages(["res-1", "res-2", "res-3", "res-4", "res-5","res-6", "res-7", "res-8", "res-9", "res-10", "res-11","res-12","res-13",])
        
        self.edgesForExtendedLayout = .None
        
        
        configureTableView()
        
        
        self.view.addSubview(navbarView)
        navbarView.addSubview(navTitleLabel2)
        
        navbarView.layer.shadowColor = UIColor.grayColor().CGColor
        navbarView.layer.shadowOffset = CGSizeMake(0, 1)
        navbarView.layer.shadowOpacity = 0.7
        navbarView.layer.shadowRadius = 2
    
        self.view.bringSubviewToFront(navbarView)
    }
    

    
    func generateImages(imageStringArray:[String]) -> [UIImage]{
        var imageArray = [UIImage]()
        for string in imageStringArray {
            let image = UIImage(named: string)
            imageArray.append(image!)
        }
        return imageArray
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        
        navbarView.frame = CGRect(x: 0, y: 0, width: x, height: 64) //****
        navbarView.backgroundColor = UIColor.whiteColor()
        
        
        
        navTitleLabel2.frame = CGRect(x: 0, y: 0, width: x, height: 20)
        navTitleLabel2.center = CGPointMake(navbarView.center.x, navbarView.center.y + 10)
        navTitleLabel2.text = "TRIPPY"
        navTitleLabel2.font = UIFont(name: "bubbleboddylight-Light", size: 30)
        navTitleLabel2.textAlignment = NSTextAlignment.Center
        
    }
    
    
    
 

}
