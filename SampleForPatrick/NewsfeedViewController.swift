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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        array_Images = self.generateImages(["Layer 87", "Layer 89", "Layer 90", "Layer 91", "Layer 92", "Layer 87", "Layer 89", "Layer 90", "Layer 91", "Layer 92"])
        
        
        configureTableView()
        
        
        

        
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
        
    }
    
    
    
 

}
