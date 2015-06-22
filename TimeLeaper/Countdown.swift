//
//  Countdown.swift
//  TimeLeaper
//
//  Created by 諸星智也 on 2015/06/18.
//  Copyright (c) 2015年 諸星智也. All rights reserved.
//

import Foundation
import UIKit

class Countdown: UIViewController {

    
    @IBOutlet weak var event1: UILabel!
    
    
    var month2:Int!
    var month1:Int!
    var day2:Int!
    var day1:Int!
    
    var hour2:Int!
    var hour1:Int!
    var minute2:Int!
    var minute1:Int!
    var second2:Int!
    var second1:Int!
    
    @IBOutlet weak var month2ImageView: UIImageView!
    @IBOutlet weak var month1ImageView: UIImageView!
    @IBOutlet weak var day2ImageView: UIImageView!
    @IBOutlet weak var day1ImageView: UIImageView!

    @IBOutlet weak var hour2ImageView: UIImageView!
    @IBOutlet weak var hour1ImageView: UIImageView!
    @IBOutlet weak var minute2ImageView: UIImageView!
    @IBOutlet weak var minute1ImageView: UIImageView!
    @IBOutlet weak var second2ImageView: UIImageView!
    @IBOutlet weak var second1ImageView: UIImageView!
    
    var image0:UIImage!
    var image1:UIImage!
    var image2:UIImage!
    var image3:UIImage!
    var image4:UIImage!
    var image5:UIImage!
    var image6:UIImage!
    var image7:UIImage!
    var image8:UIImage!
    var image9:UIImage!
    
    var timer:NSTimer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        image0 = UIImage(named: "zero.gif")
        image1 = UIImage(named: "one.gif")
        image2 = UIImage(named: "two.gif")
        image3 = UIImage(named: "three.gif")
        image4 = UIImage(named: "four.gif")
        image5 = UIImage(named: "five.gif")
        image6 = UIImage(named: "six.gif")
        image7 = UIImage(named: "seven.gif")
        image8 = UIImage(named: "eight.gif")
        image9 = UIImage(named: "nine.gif")
        
        timer=NSTimer.scheduledTimerWithTimeInterval(1.0,target: self,
            selector: Selector("time"),
            userInfo: nil,
            repeats: true)
        
    }
    
    func time(){
    let myDate: NSDate = NSDate()
    //カレンダーを取得.
    let myCalendar: NSCalendar = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian)!
    
    //取得するコンポーネントを決める.
    let myComponetns = myCalendar.components(NSCalendarUnit.CalendarUnitYear   |
    NSCalendarUnit.CalendarUnitMonth  |
    NSCalendarUnit.CalendarUnitDay    |
    NSCalendarUnit.CalendarUnitHour   |
    NSCalendarUnit.CalendarUnitMinute |
    NSCalendarUnit.CalendarUnitSecond,
    fromDate: myDate)
        
    var month:Int = myComponetns.month
    var day:Int = myComponetns.day
    
    var hour:Int = myComponetns.hour
    var minute:Int = myComponetns.minute
    var second:Int = myComponetns.second
        
    if (month>9) {
        month2 = month/10
        month1 = month - (month/10)*10
    }
    else {
        month2 = 0
        month1 = month
    }
    if (day>9) {
        day2 = day/10
        day1 = day - (day/10)*10
    }
    else {
        day2 = 0
        day1 = day
    }
        

    
    if (hour>9) {
    hour2 = hour/10
    hour1 = hour - (hour/10)*10
    }
    else {
    hour2 = 0
    hour1 = hour
    }
    
    if (minute>9) {
    minute2 = minute/10
    minute1 = minute - (minute/10)*10
    }
    else {
    minute2 = 0;
    minute1 = minute;
    }
    if (second>9) {
    second2 = second/10;
    second1 = second - (second/10)*10
    }
    else {
    second2 = 0;
    second1 = second;
    }
    
    draw()
    }
    
    func draw(){
        switch(month2){
        case 0:
            month2ImageView.image = image0
            break
        case 1:
           month2ImageView.image = image1
            break
        case 2:
            month2ImageView.image = image2
            break
        case 3:
            month2ImageView.image = image3
            break
        case 4:
            month2ImageView.image = image4
            break
        case 5:
            month2ImageView.image = image5
            break
        case 6:
            month2ImageView.image = image6
            break
        case 7:
            month2ImageView.image = image7
            break
        case 8:
            month2ImageView.image = image8
            break
        case 9:
            month2ImageView.image = image9
            break
        default:
            break
        }
        switch(month1){
        case 0:
            month1ImageView.image = image0
            break
        case 1:
            month1ImageView.image = image1
            break
        case 2:
            month1ImageView.image = image2
            break
        case 3:
            month1ImageView.image = image3
            break
        case 4:
            month1ImageView.image = image4
            break
        case 5:
            month1ImageView.image = image5
            break
        case 6:
            month1ImageView.image = image6
            break
        case 7:
            month1ImageView.image = image7
            break
        case 8:
            month1ImageView.image = image8
            break
        case 9:
            month1ImageView.image = image9
            break
        default:
            break
        }
        switch(day2){
        case 0:
            day2ImageView.image = image0
            break
        case 1:
            day2ImageView.image = image1
            break
        case 2:
            day2ImageView.image = image2
            break
        case 3:
            day2ImageView.image = image3
            break
        case 4:
            day2ImageView.image = image4
            break
        case 5:
            day2ImageView.image = image5
            break
        case 6:
            day2ImageView.image = image6
            break
        case 7:
            day2ImageView.image = image7
            break
        case 8:
            day2ImageView.image = image8
            break
        case 9:
            day2ImageView.image = image9
            break
        default:
            break
        }
        
        switch(day1){
        case 0:
            day1ImageView.image = image0
            break
        case 1:
            day1ImageView.image = image1
            break
        case 2:
            day1ImageView.image = image2
            break
        case 3:
            day1ImageView.image = image3
            break
        case 4:
            day1ImageView.image = image4
            break
        case 5:
            day1ImageView.image = image5
            break
        case 6:
            day1ImageView.image = image6
            break
        case 7:
            day1ImageView.image = image7
            break
        case 8:
            day1ImageView.image = image8
            break
        case 9:
            day1ImageView.image = image9
            break
        default:
            break
        }
        
        switch(hour2){
        case 0:
            hour2ImageView.image = image0
            break
        case 1:
            hour2ImageView.image = image1
            break
        case 2:
            hour2ImageView.image = image2
            break
        case 3:
            hour2ImageView.image = image3
            break
        case 4:
            hour2ImageView.image = image4
            break
        case 5:
            hour2ImageView.image = image5
            break
        case 6:
            hour2ImageView.image = image6
            break
        case 7:
            hour2ImageView.image = image7
            break
        case 8:
            hour2ImageView.image = image8
            break
        case 9:
            hour2ImageView.image = image9
            break
        default:
            break
        }
        
        switch(hour1){
        case 0:
            hour1ImageView.image = image0
            break
        case 1:
            hour1ImageView.image = image1
            break
        case 2:
            hour1ImageView.image = image2
            break
        case 3:
            hour1ImageView.image = image3
            break
        case 4:
            hour1ImageView.image = image4
            break
        case 5:
            hour1ImageView.image = image5
            break
        case 6:
            hour1ImageView.image = image6
            break
        case 7:
            hour1ImageView.image = image7
            break
        case 8:
            hour1ImageView.image = image8
            break
        case 9:
            hour1ImageView.image = image9
            break
        default:
            break
        }
        
        switch(minute2){
        case 0:
            minute2ImageView.image = image0
            break
        case 1:
            minute2ImageView.image = image1
            break
        case 2:
            minute2ImageView.image = image2
            break
        case 3:
            minute2ImageView.image = image3
            break
        case 4:
            minute2ImageView.image = image4
            break
        case 5:
            minute2ImageView.image = image5
            break
        case 6:
            minute2ImageView.image = image6
            break
        case 7:
            minute2ImageView.image = image7
            break
        case 8:
            minute2ImageView.image = image8
            break
        case 9:
            minute2ImageView.image = image9
            break
        default:
            break
        }
        
        switch(minute1){
        case 0:
            minute1ImageView.image = image0
            break
        case 1:
            minute1ImageView.image = image1
            break
        case 2:
            minute1ImageView.image = image2
            break
        case 3:
            minute1ImageView.image = image3
            break
        case 4:
            minute1ImageView.image = image4
            break
        case 5:
            minute1ImageView.image = image5
            break
        case 6:
            minute1ImageView.image = image6
            break
        case 7:
            minute1ImageView.image = image7
            break
        case 8:
            minute1ImageView.image = image8
            break
        case 9:
            minute1ImageView.image = image9
            break
        default:
            break
        }
        switch(second2){
        case 0:
            second2ImageView.image = image0
            break
        case 1:
            second2ImageView.image = image1
            break
        case 2:
            second2ImageView.image = image2
            break
        case 3:
            second2ImageView.image = image3
            break
        case 4:
            second2ImageView.image = image4
            break
        case 5:
            second2ImageView.image = image5
            break
        case 6:
            second2ImageView.image = image6
            break
        case 7:
            second2ImageView.image = image7
            break
        case 8:
            second2ImageView.image = image8
            break
        case 9:
            second2ImageView.image = image9
            break
        default:
            break
        }
        
        switch(second1){
        case 0:
            second1ImageView.image = image0
            break
        case 1:
            second1ImageView.image = image1
            break
        case 2:
            second1ImageView.image = image2
            break
        case 3:
            second1ImageView.image = image3
            break
        case 4:
            second1ImageView.image = image4
            break
        case 5:
            second1ImageView.image = image5
            break
        case 6:
            second1ImageView.image = image6
            break
        case 7:
            second1ImageView.image = image7
            break
        case 8:
            second1ImageView.image = image8
            break
        case 9:
            second1ImageView.image = image9
            break
        default:
            break
        }
        
    }


    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewDidDisappear(animated)
        var appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        event1.text =  appDelegate.ViewVal // Labelに値引き渡し用のプロパティから取得して設定する。
    }

    
    //ホームに戻る
    
    @IBAction func backhome(){
        
        self.presentingViewController?.presentingViewController?.dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    
}