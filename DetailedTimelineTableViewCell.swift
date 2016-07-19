//
//  DetailsTimeTableViewCell.swift
//  SampleForPatrick
//
//  Created by Patrick Kepel on 14/07/2016.
//  Copyright © 2016 Reeve Yew. All rights reserved.
//

import UIKit
import PureLayout

class DetailedTimelineTableViewCell: UITableViewCell {
    let imageView_SmallIcon = UIImageView()
    let imageSlider = UISlider()
    var tableView = UITableView()
    let label_Location = UILabel()
    let border_Line = UIView()
    override init(style: UITableViewCellStyle, reuseIdentifier: String!) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupSmallIcon()
        setupLabel()
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    //setup small icon in the tableview
    func setupSmallIcon()
    {
        imageView_SmallIcon.backgroundColor = UIColor.whiteColor()
        self.addSubview(imageView_SmallIcon)
        imageView_SmallIcon.image = UIImage(named:"small-icon.png")
        imageView_SmallIcon.xSize(width: 10, height: 10)
        imageView_SmallIcon.xPinEdgesToSuperview(top: 15, right: nil, bottom: nil, left: 25)
    }
    
    
    //setup label "location name" in the tableview next to the small icons
    func setupLabel()
    {
        label_Location.textAlignment = NSTextAlignment.Right
        label_Location.text = "Kuala Lumpur"
        label_Location.font = UIFont.boldSystemFontOfSize(10)
        label_Location.textColor = UIColor.blackColor()
        label_Location.backgroundColor = UIColor.clearColor()
        self.addSubview(label_Location)
        label_Location.xPinEdgesToSuperview(top: 15, right: 10, bottom: nil, left: nil)
        
    }
    
    
    
    

}