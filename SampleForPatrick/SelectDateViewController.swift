//
//  SelectDateViewController.swift
//  SampleForPatrick
//
//  Created by Patrick Kepel on 19/07/2016.
//  Copyright © 2016 Reeve Yew. All rights reserved.
//

import UIKit

class SelectDateViewController: UIViewController, UIPickerViewDelegate {
    var select_Date: UIDatePicker = UIDatePicker()
    let imageView_BackgroundPhoto = UIImageView()
    
    override func viewDidLoad() {
        displayBackgroundPhoto()
        displayDatePicker()
    }
    
    func displayBackgroundPhoto(){
        imageView_BackgroundPhoto.image = UIImage(named:"beach.jpg")
        self.view.addSubview(imageView_BackgroundPhoto)
        imageView_BackgroundPhoto.xPinEdgesToSuperview(top: 0, right: 0, bottom: nil, left: 0)
        
    }
    
    
    func displayDatePicker(){
        select_Date.timeZone = NSTimeZone.localTimeZone()
        select_Date.backgroundColor = UIColor.whiteColor()
//        select_Date.xSize(width: nil, height: 80)
        select_Date.layer.cornerRadius = 5.0
        select_Date.layer.shadowOpacity = 0.5
        self.view.addSubview(select_Date)
        select_Date.autoCenterInSuperview()
        select_Date.xPinTop(toBottomOfView: imageView_BackgroundPhoto, offset: -50)
    }
    
    func datePickerValueChanged(sender: UIDatePicker){
        // Create date formatter
        let dateFormatter = NSDateFormatter()
        
        // Set date format
        dateFormatter.dateFormat = "MM/dd/yyyy hh:mm a"
        
        // Apply date format
        let selectedDate: NSString = dateFormatter.stringFromDate(sender.date)
        
        print("Selected value \(selectedDate)")
    }
    
    
   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
