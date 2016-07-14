//
//  DetailsTimeTableViewCell.swift
//  SampleForPatrick
//
//  Created by Patrick Kepel on 14/07/2016.
//  Copyright © 2016 Reeve Yew. All rights reserved.
//

import UIKit
import PureLayout

class DetailTimelineTableViewCell: UITableViewCell {
    let imageView_SmallIcon = UIImageView()
    let imageSlider = UISlider()
    var tableView = UITableView()
    let label_Location = UILabel()
    override init(style: UITableViewCellStyle, reuseIdentifier: String!) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupSmallIcon()
        setupLabel()
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupSmallIcon()
    {
        //setup cover photo
        imageView_SmallIcon.backgroundColor = UIColor.clearColor()
        self.addSubview(imageView_SmallIcon)
        imageView_SmallIcon.image = UIImage(named:"world.png")
        imageView_SmallIcon.autoSetDimension(.Height, toSize: 10)
        imageView_SmallIcon.autoSetDimension(.Width, toSize: 10)
        imageView_SmallIcon.autoPinEdgeToSuperviewEdge(.Top, withInset: 15)
        imageView_SmallIcon.autoPinEdgeToSuperviewEdge(.Left, withInset: 8)
    }
    
    
    
    func setupLabel()
    {
        label_Location.textAlignment = NSTextAlignment.Center
        label_Location.text = "Kuala Lumpur"
        label_Location.font = UIFont.boldSystemFontOfSize(10)
        label_Location.textColor = UIColor.blackColor()
        self.addSubview(label_Location)
        label_Location.autoCenterInSuperview()
        
    }
    

}