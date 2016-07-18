//
//  ChooseDataViewController.swift
//  SampleForPatrick
//
//  Created by Reeve Yew on 18/07/2016.
//  Copyright © 2016 Reeve Yew. All rights reserved.
//

import UIKit


class DatePickerViewController: UIViewController, FxDatePickerDelegate {

    var datePicker:FxDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        datePicker = FxDatePicker(frame: CGRectMake(0, 0, x, 162))
        datePicker.sizeToFit()
        self.view.addSubview(self.datePicker)
        self.view.backgroundColor = UIColor.whiteColor()
        
        datePicker.delegate = self
        
        datePicker.setValue(UIColor.blackColor(), forKey: "textColor")
        datePicker.backgroundColor = UIColor.whiteColor()
        
        datePicker.font = UIFont.systemFontOfSize(13)
        datePicker.selectedFont = UIFont.systemFontOfSize(20)
        datePicker.alpha = 0
        
        
        datePicker.backgroundColor = UIColor.yellowColor()
        
        
        
        
    
        
    }
    
    
    func dateSelected(datePicker: FxDatePicker!, date: NSDate!) {

        let dateFormatter = NSDateFormatter()
        dateFormatter.dateStyle = NSDateFormatterStyle.MediumStyle
        dateFormatter.timeStyle = NSDateFormatterStyle.NoStyle
        let stringDate = dateFormatter.stringFromDate(date)

        print("datePickerValueChanged: \(stringDate)")
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
//        self.datePicker.xPinEdgesToSuperview(top: 0, right: 0, bottom: 0, left: 0)
    }
    
    
}
