//
//  FxDatePicker.swift
//
//  Created by Gasim on 1/14/15.
//

import UIKit

protocol FxDatePickerDelegate {
    
    func dateSelected(datePicker: FxDatePicker!, date : NSDate!);
    
}

enum FxDatePickerMode {
    case Date
}

class FxDatePicker: UIView, UIPickerViewDelegate, UIPickerViewDataSource, FxDatePickerDelegate {
    
    class Component {
        var calendar : NSCalendar;
        var components : NSDateComponents;
        var pickerItems : [[String]] = [];
        var order : [String: Int] = [:];
        
        init() {
            self.calendar = NSCalendar.currentCalendar();
            self.components = NSDateComponents();
        }
        
        init(calendar : NSCalendar, order : [String : Int]) {
            self.calendar = calendar;
            self.components = calendar.components([.Year, .Month, .Day], fromDate: NSDate());
            self.order = order;
        }
        
        func select(values: [Int]) -> [Int] {
            return [];
        }
        
        func toDate() -> NSDate {
            return calendar.dateFromComponents(components)!;
        }
        
        func getPickerItems() -> [[String]] {
            return pickerItems;
        }
        
        func getCurrentIndices() -> [Int] {
            return [];
        }
        
    }
    
    class DateComponent : Component {
        
        override init(calendar: NSCalendar, order : [String : Int]) {
            super.init(calendar: calendar, order: order);
            pickerItems = [[String]](count: 3, repeatedValue: []);
            
            pickerItems[order["day"]!] = populateDays();
            pickerItems[order["month"]!] = populateMonths();
            pickerItems[order["year"]!] = populateYears();
            
        }
        
        override func getCurrentIndices() -> [Int] {
            var idx = [Int](count: 3, repeatedValue: 0);
            idx[order["day"]!] = components.day - 1;
            idx[order["month"]!] = components.month - 1;
            idx[order["year"]!] = components.year - 1;
            return idx;
        }
        
        override func select(values : [Int]) -> [Int] {
            components.year = values[order["year"]!] + 1;
            components.day = values[order["day"]!] + 1;
            components.month = values[order["month"]!] + 1;
            var vals = values;
            if !components.isValidDateInCalendar(calendar) {
                let correct = NSDateComponents();
                correct.month = components.month + 1;
                correct.day = 0;
                correct.year = components.year;
                let date = calendar.dateFromComponents(correct)!;
                let correctDay = calendar.component(.Day, fromDate: date);
                vals[order["day"]!] = correctDay - 1;
                components.day = correctDay;
            }
            
            return vals;
        }
        
        func populateDays() -> [String] {
            var days : [String] = [];
            for var i = 1; i <= 31; ++i {
                days.append("\(i)");
            }
            return days;
        }
        
        func populateMonths() -> [String] {
            return NSDateFormatter().shortMonthSymbols as [String];
        }
        
        func populateYears() -> [String] {
            var years : [String] = [];
            for var i = 1; i <= 9999; ++i {
                years.append("\(i)");
            }
            return years;
        }
        
    }
    
    private var pickerView : UIPickerView = UIPickerView();
    private var calendar : NSCalendar = NSCalendar(identifier: NSCalendarIdentifierGregorian)!;
    private var components : [[String]] = [];
    private var types : [String] = [];
    
    private var component : Component = Component();
    
    var delegate : FxDatePickerDelegate!;
    
    var bgColor : UIColor! = nil;
    var font : UIFont = UIFont.systemFontOfSize(UIFont.systemFontSize());
    var selectedFont : UIFont! = nil;
    var selectedTextColor : UIColor! = nil;
    var textColor : UIColor = UIColor.blackColor();
    var mode : FxDatePickerMode = FxDatePickerMode.Date;
    var locale : NSLocale = NSLocale.systemLocale();
    
    func createComponents() {
        
        calendar.locale = self.locale;
        
        switch(mode) {
            case FxDatePickerMode.Date:
               component = DateComponent(calendar: calendar, order: ["day": 0, "month": 1, "year": 2]);
        }

        var indices = component.getCurrentIndices();
        
        for var i = 0; i < indices.count; ++i {
            pickerView.selectRow(indices[i], inComponent: i, animated: false)
        }

    }
    
    func initialize() {
        pickerView.delegate = self;
        pickerView.dataSource = self;
        self.delegate = self;
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame);
        initialize();
    }
    
    init() {
        super.init(frame: CGRect(x: 0, y: 0, width: x, height: 162));
        
        initialize();
    }

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!;
        self.autoresizingMask = .FlexibleWidth
        self.frame = CGRect(x: 0, y: 0, width: x, height: 162);
        initialize();
    }
    
    override func drawRect(rect: CGRect) {
        super.drawRect(rect);
        self.addSubview(pickerView);
        
        self.autoresizingMask = .FlexibleWidth
        if self.bgColor != nil {
            self.backgroundColor = self.bgColor;
        }
        pickerView.backgroundColor = self.backgroundColor;
        createComponents();
    }
    
    func setCurrent(values : [Int]) {
        for i in 0 ..< values.count {
            pickerView.selectRow(values[i], inComponent: i, animated: false)
        }
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return self.component.getPickerItems().count;
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.component.getPickerItems()[component].count;
    }
    
    func getAttributedString(row: Int, inComponent: Int) -> NSAttributedString {
        
        let selectedRow = self.pickerView.selectedRowInComponent(inComponent);
        
        var font : UIFont = self.font;
        var textColor : UIColor = self.textColor
        
        if selectedRow == row {
            if let selectedTextColor = self.selectedTextColor {
                textColor = selectedTextColor;
            }
            
            if let selectedFont = self.selectedFont {
                font = selectedFont;
            }
        }
        
        let attributes = [
            NSFontAttributeName: font,
            NSForegroundColorAttributeName: textColor
        ];

        
        return NSAttributedString(string: self.component.getPickerItems()[inComponent][row], attributes: attributes);
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        var values : [Int] = [];
        for i in 0 ..< self.component.getPickerItems().count {
            values.append(pickerView.selectedRowInComponent(i));
        }
        
        var vals = self.component.select(values);
        for i in 0 ..< vals.count {
            if vals[i] != values[i] {
                pickerView.selectRow(vals[i], inComponent: i, animated: true);
                pickerView.reloadComponent(i);
            }
        }
        
        pickerView.reloadComponent(component);
        
        let date = self.component.toDate();
        
        delegate.dateSelected(self, date: date);
    }
    
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView {
        var label = view as! UILabel!;
        if label == nil {
            label = UILabel();
            label.backgroundColor = UIColor.clearColor()
            label.textAlignment = NSTextAlignment.Center;
            label.alpha = 1
        }
        label.attributedText = self.getAttributedString(row, inComponent: component);
        
        
        
    
        let selectedRow = pickerView.selectedRowInComponent(component)
        
        if selectedRow == row {
            
        }
        
        pickerView.subviews[1].hidden = true
        pickerView.subviews[2].hidden = true

        
        return label;
    }
    
    
    func pickerView(pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        return 80
    }
    
    
    
    func dateSelected(datePicker: FxDatePicker!, date: NSDate!) {
        return;
    }
     
}
