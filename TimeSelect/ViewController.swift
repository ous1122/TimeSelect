//
//  ViewController.swift
//  TimeSelect
//
//  Created by D7703_13 on 2018. 4. 11..
//  Copyright © 2018년 ous. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer = Timer()
    
    @IBOutlet weak var CTime: UILabel!
    @IBOutlet weak var PTime: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {(timer) in self.updateTime()})
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func ChangePick(_ sender: UIDatePicker) {
        let datePickerView = sender
        
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "ko_KR")
        formatter.dateFormat = "YYYY년 MM월 dd일 HH : mm : ss a EEE"
        PTime.text = formatter.string(from: datePickerView.date)
        
    }
    
    @objc func updateTime() {
        let date1 = Date()
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "ko_KR")
        formatter.dateFormat = "yyyy-MM-dd a HH:mm:ss EEE"
        let time1 = formatter.string(from: date1)
        CTime.text = time1
    }

}
