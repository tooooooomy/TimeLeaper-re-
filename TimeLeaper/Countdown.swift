//
//  Countdown.swift
//  TimeLeaper
//
//  Created by 諸星智也 on 2015/06/18.
//  Copyright (c) 2015年 諸星智也. All rights reserved.
//

import Foundation
import UIKit
import Social

class Countdown: UIViewController {
    var appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate

    
    
    @IBOutlet weak var event1: UILabel!
    

    var year2:[Int]!=[0,0]
    var year1:[Int]!=[0,0]
    var month2:[Int]!=[0,0]
    var month1:[Int]!=[0,0]
    var day2:[Int]!=[0,0]
    var day1:[Int]!=[0,0]
    var hour2:[Int]!=[0,0]
    var hour1:[Int]!=[0,0]
    var minute2:[Int]!=[0,0]
    var minute1:[Int]!=[0,0]
    var second2:[Int]!=[0,0]
    var second1:[Int]!=[0,0]
    
    //======NOW===========
    @IBOutlet weak var year2ImageView: UIImageView!
    @IBOutlet weak var year1ImageView: UIImageView!
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
    
    //=======NOW==========
    
    //========countdown============

    @IBOutlet weak var year2ImageView2: UIImageView!
    @IBOutlet weak var year1ImageView2: UIImageView!
    @IBOutlet weak var month2ImageView2: UIImageView!
    @IBOutlet weak var month1ImageView2: UIImageView!
    @IBOutlet weak var day2ImageView2: UIImageView!
    @IBOutlet weak var day1ImageView2: UIImageView!
    @IBOutlet weak var hour2ImageView2: UIImageView!
    @IBOutlet weak var hour1ImageView2: UIImageView!
    @IBOutlet weak var minute2ImageView2: UIImageView!
    @IBOutlet weak var minute1ImageView2: UIImageView!
    @IBOutlet weak var second2ImageView2: UIImageView!
    @IBOutlet weak var second1ImageView2: UIImageView!
    
    //=======conundown============
    


    
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
            selector: Selector("Update"),
            userInfo: nil,
            repeats: true)
        timer=NSTimer.scheduledTimerWithTimeInterval(1.0,target: self,
            selector: Selector("Update2"),
            userInfo: nil,
            repeats: true)
        
    }
    
    
    
    func Update() {
        
        Nowtime()
        
        
    }
    func Update2(){
        
        CountTime()
    }
    
    func Nowtime(){
    let myDate: NSDate = NSDate()
        println(myDate)

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
        
    var year:Int = myComponetns.year
    var month:Int = myComponetns.month
    var day:Int = myComponetns.day
    var hour:Int = myComponetns.hour
    var minute:Int = myComponetns.minute
    var second:Int = myComponetns.second
        
        

        if (year<2000){
            year=year-1900
        }else{
            year=year-2000
        }
    
    //-------補正------------------
    if (year>9) {
            year2[0] = year/10
            year1[0] = year - (year/10)*10
        println(year2[0])
        println(year1[0])
        }
    else {
            year2[0] = 0
            year1[0] = year
        println(year2[0])
        println(year1[0])
        }
    if (month>9) {
        month2[0] = month/10
        month1[0] = month - (month/10)*10
    }
    else {
        month2[0] = 0
        month1[0] = month
    }
    if (day>9) {
        day2[0] = day/10
        day1[0] = day - (day/10)*10
    }
    else {
        day2[0] = 0
        day1[0] = day
    }
    if (hour>9) {
    hour2[0] = hour/10
    hour1[0] = hour - (hour/10)*10
    }
    else {
    hour2[0] = 0
    hour1[0] = hour
    }
    
    if (minute>9) {
    minute2[0] = minute/10
    minute1[0] = minute - (minute/10)*10
    }
    else {
    minute2[0] = 0;
    minute1[0] = minute;
    }
    if (second>9) {
    second2[0] = second/10;
    second1[0] = second - (second/10)*10
    }
    else {
    second2[0] = 0;
    second1[0] = second;
    }
        
    //-------補正------------------
    
        
        
    draw() //時間表示
        
    }

    
    //=======カウントダウン=============
    func CountTime(){
        let myDate: NSDate = NSDate()
        
        let myCalendar: NSCalendar = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian)!
        
        let myComponetns = myCalendar.components(NSCalendarUnit.CalendarUnitYear   |
            NSCalendarUnit.CalendarUnitMonth  |
            NSCalendarUnit.CalendarUnitDay    |
            NSCalendarUnit.CalendarUnitHour   |
            NSCalendarUnit.CalendarUnitMinute |
            NSCalendarUnit.CalendarUnitSecond,
            fromDate: myDate, toDate: appDelegate.GetDate!, options: nil)
        
        var year:Int = myComponetns.year
        var month:Int = myComponetns.month
        var day:Int = myComponetns.day
        var hour:Int = myComponetns.hour
        var minute:Int = myComponetns.minute
        var second:Int = myComponetns.second
        
        
        //カウントが０になったらツイッターに投稿
        if year == 0 {
            if month == 0{
                if day == 0{
                    if hour == 0{
                        if minute == 0{
                            if second == 0{
                                //ツイッター投稿
                                var twitterVC = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
                                twitterVC.setInitialText(appDelegate.ViewVal)
                                presentViewController(twitterVC, animated: true, completion: nil)
                               
                            }
                        }
                    }
                }
            }
        }
        
  
        
        //-------補正------------------
        if (year>9) {
            year2[1] = year/10
            year1[1] = year - (year/10)*10
            println(year2[1])
            println(year1[1])
        }
        else {
            year2[1] = 0
            year1[1] = year
            println(year2[1])
            println(year1[1])
        }
        if (month>9) {
            month2[1] = month/10
            month1[1] = month - (month/10)*10
            
           // println(month2[1])
          //  println(month1[1])
        }
        else {
            month2[1] = 0
            month1[1] = month
            //println(month2[1])
            //println(month1[1])
        }
        if (day>9) {
            day2[1] = day/10
            day1[1] = day - (day/10)*10
            //println(day2[1])
            //println(day1[1])
        }
        else {
            day2[1] = 0
            day1[1] = day
            //println(day2[1])
           // println(day1[1])
        }
        if (hour>9) {
            hour2[1] = hour/10
            hour1[1] = hour - (hour/10)*10
          //  println(hour2[1])
           // println(hour1[1])
        }
        else {
            hour2[1] = 0
            hour1[1] = hour
           // println(hour2[1])
           // println(hour1[1])
        }
        
        if (minute>9) {
            minute2[1] = minute/10
            minute1[1] = minute - (minute/10)*10
          //  println(minute2[1])
         //   println(minute1[1])
        }
        else {
            minute2[1] = 0;
            minute1[1] = minute;
           // println(minute2[1])
           // println(minute1[1])
        }
        if (second>9) {
            second2[1] = second/10;
            second1[1] = second - (second/10)*10
          //  println(second2[1])
           // println(second1[1])
        }
        else {
            second2[1] = 0;
            second1[1] = second;
          //  println(second2[1])
          //  println(second1[1])
        }
        
        //-------補正------------------
        
        
        
        draw2() //時間表示
    }
    
    //---------画像で時間を表示----------
    func draw(){
        switch(year2[0]){
        case 0:
            year2ImageView.image = image0
            break
        case 1:
            year2ImageView.image = image1
            break
        case 2:
            year2ImageView.image = image2
            break
        case 3:
            year2ImageView.image = image3
            break
        case 4:
            year2ImageView.image = image4
            break
        case 5:
            year2ImageView.image = image5
            break
        case 6:
            year2ImageView.image = image6
            break
        case 7:
            year2ImageView.image = image7
            break
        case 8:
            year2ImageView.image = image8
            break
        case 9:
            year2ImageView.image = image9
            break
        default:
            break
        }
        switch(year1[0]){
        case 0:
            year1ImageView.image = image0
            break
        case 1:
            year1ImageView.image = image1
            break
        case 2:
            year1ImageView.image = image2
            break
        case 3:
            year1ImageView.image = image3
            break
        case 4:
            year1ImageView.image = image4
            break
        case 5:
            year1ImageView.image = image5
            break
        case 6:
            year1ImageView.image = image6
            break
        case 7:
            year1ImageView.image = image7
            break
        case 8:
            year1ImageView.image = image8
            break
        case 9:
            year1ImageView.image = image9
            break
        default:
            break
        }
        
        switch(month2[0]){
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
        switch(month1[0]){
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
        switch(day2[0]){
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
        
        switch(day1[0]){
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
        
        switch(hour2[0]){
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
        
        switch(hour1[0]){
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
        
        switch(minute2[0]){
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
        
        switch(minute1[0]){
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
        switch(second2[0]){
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
        
        switch(second1[0]){
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
    
    //---------画像で時間を表示----------

    
    //==============画像表示=================
    func draw2(){
        
        switch(year2[1]){
        case 0:
            year2ImageView2.image = image0
            break
        case 1:
            year2ImageView2.image = image1
            break
        case 2:
            year2ImageView2.image = image2
            break
        case 3:
            year2ImageView2.image = image3
            break
        case 4:
            year2ImageView2.image = image4
            break
        case 5:
            year2ImageView2.image = image5
            break
        case 6:
            year2ImageView2.image = image6
            break
        case 7:
            year2ImageView2.image = image7
            break
        case 8:
            year2ImageView2.image = image8
            break
        case 9:
            year2ImageView2.image = image9
            break
        default:
            break
        }
        switch(year1[1]){
        case 0:
            year1ImageView2.image = image0
            break
        case 1:
            year1ImageView2.image = image1
            break
        case 2:
            year1ImageView2.image = image2
            break
        case 3:
            year1ImageView2.image = image3
            break
        case 4:
            year1ImageView2.image = image4
            break
        case 5:
            year1ImageView2.image = image5
            break
        case 6:
            year1ImageView2.image = image6
            break
        case 7:
            year1ImageView2.image = image7
            break
        case 8:
            year1ImageView2.image = image8
            break
        case 9:
            year1ImageView2.image = image9
            break
        default:
            break
        }
        
        
        switch(month2[1]){
        case 0:
            month2ImageView2.image = image0
            break
        case 1:
            month2ImageView2.image = image1
            break
        case 2:
            month2ImageView2.image = image2
            break
        case 3:
            month2ImageView2.image = image3
            break
        case 4:
            month2ImageView2.image = image4
            break
        case 5:
            month2ImageView2.image = image5
            break
        case 6:
            month2ImageView2.image = image6
            break
        case 7:
            month2ImageView2.image = image7
            break
        case 8:
            month2ImageView2.image = image8
            break
        case 9:
            month2ImageView2.image = image9
            break
        default:
            break
        }
        switch(month1[1]){
        case 0:
            month1ImageView2.image = image0
            break
        case 1:
            month1ImageView2.image = image1
            break
        case 2:
            month1ImageView2.image = image2
            break
        case 3:
            month1ImageView2.image = image3
            break
        case 4:
            month1ImageView2.image = image4
            break
        case 5:
            month1ImageView2.image = image5
            break
        case 6:
            month1ImageView2.image = image6
            break
        case 7:
            month1ImageView2.image = image7
            break
        case 8:
            month1ImageView2.image = image8
            break
        case 9:
            month1ImageView2.image = image9
            break
        default:
            break
        }
        switch(day2[1]){
        case 0:
            day2ImageView2.image = image0
            break
        case 1:
            day2ImageView2.image = image1
            break
        case 2:
            day2ImageView2.image = image2
            break
        case 3:
            day2ImageView2.image = image3
            break
        case 4:
            day2ImageView2.image = image4
            break
        case 5:
            day2ImageView2.image = image5
            break
        case 6:
            day2ImageView2.image = image6
            break
        case 7:
            day2ImageView2.image = image7
            break
        case 8:
            day2ImageView2.image = image8
            break
        case 9:
            day2ImageView2.image = image9
            break
        default:
            break
        }
        
        switch(day1[1]){
        case 0:
            day1ImageView2.image = image0
            break
        case 1:
            day1ImageView2.image = image1
            break
        case 2:
            day1ImageView2.image = image2
            break
        case 3:
            day1ImageView2.image = image3
            break
        case 4:
            day1ImageView2.image = image4
            break
        case 5:
            day1ImageView2.image = image5
            break
        case 6:
            day1ImageView2.image = image6
            break
        case 7:
            day1ImageView2.image = image7
            break
        case 8:
            day1ImageView2.image = image8
            break
        case 9:
            day1ImageView2.image = image9
            break
        default:
            break
        }
        
        switch(hour2[1]){
        case 0:
            hour2ImageView2.image = image0
            break
        case 1:
            hour2ImageView2.image = image1
            break
        case 2:
            hour2ImageView2.image = image2
            break
        case 3:
            hour2ImageView2.image = image3
            break
        case 4:
            hour2ImageView2.image = image4
            break
        case 5:
            hour2ImageView2.image = image5
            break
        case 6:
            hour2ImageView2.image = image6
            break
        case 7:
            hour2ImageView2.image = image7
            break
        case 8:
            hour2ImageView2.image = image8
            break
        case 9:
            hour2ImageView2.image = image9
            break
        default:
            break
        }
        
        switch(hour1[1]){
        case 0:
            hour1ImageView2.image = image0
            break
        case 1:
            hour1ImageView2.image = image1
            break
        case 2:
            hour1ImageView2.image = image2
            break
        case 3:
            hour1ImageView2.image = image3
            break
        case 4:
            hour1ImageView2.image = image4
            break
        case 5:
            hour1ImageView2.image = image5
            break
        case 6:
            hour1ImageView2.image = image6
            break
        case 7:
            hour1ImageView2.image = image7
            break
        case 8:
            hour1ImageView2.image = image8
            break
        case 9:
            hour1ImageView2.image = image9
            break
        default:
            break
        }
        
        switch(minute2[1]){
        case 0:
            minute2ImageView2.image = image0
            break
        case 1:
            minute2ImageView2.image = image1
            break
        case 2:
            minute2ImageView2.image = image2
            break
        case 3:
            minute2ImageView2.image = image3
            break
        case 4:
            minute2ImageView2.image = image4
            break
        case 5:
            minute2ImageView2.image = image5
            break
        case 6:
            minute2ImageView2.image = image6
            break
        case 7:
            minute2ImageView2.image = image7
            break
        case 8:
            minute2ImageView2.image = image8
            break
        case 9:
            minute2ImageView2.image = image9
            break
        default:
            break
        }
        
        switch(minute1[1]){
        case 0:
            minute1ImageView2.image = image0
            break
        case 1:
            minute1ImageView2.image = image1
            break
        case 2:
            minute1ImageView2.image = image2
            break
        case 3:
            minute1ImageView2.image = image3
            break
        case 4:
            minute1ImageView2.image = image4
            break
        case 5:
            minute1ImageView2.image = image5
            break
        case 6:
            minute1ImageView2.image = image6
            break
        case 7:
            minute1ImageView2.image = image7
            break
        case 8:
            minute1ImageView2.image = image8
            break
        case 9:
            minute1ImageView2.image = image9
            break
        default:
            break
        }
        switch(second2[1]){
        case 0:
            second2ImageView2.image = image0
            break
        case 1:
            second2ImageView2.image = image1
            break
        case 2:
            second2ImageView2.image = image2
            break
        case 3:
            second2ImageView2.image = image3
            break
        case 4:
            second2ImageView2.image = image4
            break
        case 5:
            second2ImageView2.image = image5
            break
        case 6:
            second2ImageView2.image = image6
            break
        case 7:
            second2ImageView2.image = image7
            break
        case 8:
            second2ImageView2.image = image8
            break
        case 9:
            second2ImageView2.image = image9
            break
        default:
            break
        }
        
        switch(second1[1]){
        case 0:
            second1ImageView2.image = image0
            break
        case 1:
            second1ImageView2.image = image1
            break
        case 2:
            second1ImageView2.image = image2
            break
        case 3:
            second1ImageView2.image = image3
            break
        case 4:
            second1ImageView2.image = image4
            break
        case 5:
            second1ImageView2.image = image5
            break
        case 6:
            second1ImageView2.image = image6
            break
        case 7:
            second1ImageView2.image = image7
            break
        case 8:
            second1ImageView2.image = image8
            break
        case 9:
            second1ImageView2.image = image9
            break
        default:
            break
        }
        
    }


    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    //---------------------テキスト受け取りと表示----------------------
    override func viewWillAppear(animated: Bool) {
        super.viewDidDisappear(animated)

        event1.text =  appDelegate.ViewVal // Labelに値引き渡し用のプロパティから取得して設定する。
    }
    //--------------------テキスト受け取りと表示-----------------------

    
    //-----------------------ホームに戻る----------------------------
    
    @IBAction func backhome(){
        
        self.presentingViewController?.presentingViewController?.dismissViewControllerAnimated(true, completion: nil)
        
    }
     //-----------------------ホームに戻る----------------------------   
    
}