//
//  FutureHome.swift
//  TimeLeaper
//
//  Created by 諸星智也 on 2015/06/17.
//  Copyright (c) 2015年 諸星智也. All rights reserved.
//
import UIKit
//mport Foundation
class FutureHome: UIViewController{
    
    var appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate //AppDelegateオブジェクトの呼び出し。as ◯◯はSwiftのキャスト表現
    
    @IBOutlet weak var text: UITextField! //Event1のテキストフィールド
    @IBOutlet weak var picker: UIDatePicker!
    

    
    override func viewDidLoad() {
    
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //--------------pickerで取得した日時-----------
    
    
    
    func countdown() {
        let myCalendar: NSCalendar = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian)!
        
        let myComponetns = myCalendar.components(NSCalendarUnit.CalendarUnitYear   |
            NSCalendarUnit.CalendarUnitMonth  |
            NSCalendarUnit.CalendarUnitDay    |
            NSCalendarUnit.CalendarUnitHour   |
            NSCalendarUnit.CalendarUnitMinute |
            NSCalendarUnit.CalendarUnitSecond,
            fromDate: picker.date)    //選択した時間
        
        var month:Int = myComponetns.month
        var day:Int = myComponetns.day
        var hour:Int = myComponetns.hour
        var minute:Int = myComponetns.minute
        var second:Int = myComponetns.second //Intに変換
        
        appDelegate.GetTime[0]=month;
        appDelegate.GetTime[1]=day;
        appDelegate.GetTime[2]=hour;
        appDelegate.GetTime[3]=minute;
        appDelegate.GetTime[4]=second; //配列にセット
        
        let myDate: NSDate = NSDate() //現在時間取得
        
        let myComponetns_now = myCalendar.components(NSCalendarUnit.CalendarUnitYear   |
            NSCalendarUnit.CalendarUnitMonth  |
            NSCalendarUnit.CalendarUnitDay    |
            NSCalendarUnit.CalendarUnitHour   |
            NSCalendarUnit.CalendarUnitMinute |
            NSCalendarUnit.CalendarUnitSecond,
            fromDate: myDate) //現在時刻
        
        var month2:Int = myComponetns_now.month
        var day2:Int = myComponetns_now.day
        var hour2:Int = myComponetns_now.hour
        var minute2:Int = myComponetns_now.minute
        var second2:Int = myComponetns_now.second //Intに変換
        
        appDelegate.NowTime[0]=month2;
        appDelegate.NowTime[1]=day2;
        appDelegate.NowTime[2]=hour2;
        appDelegate.NowTime[3]=minute2;
        appDelegate.NowTime[4]=second2; //配列にセット
        
        for (var i=0;i<5;i++){
            appDelegate.RemainingTime[i]=appDelegate.GetTime[i]-appDelegate.NowTime[i];

            
        }


    }
    
    
    
    //-------------------------テキストフィールド----------------------------
    
    
    override func viewWillDisappear(animated: Bool) {
        super.viewDidDisappear(animated) //エフェクト関係のパラメタだと思うが、今回は使用しないので、基底クラスを呼び出して、終わり。
        appDelegate.ViewVal = text.text // TextFieldの値を取得し、値引き渡し用のプロパティにセット
    }
    
    
    //-------------------------テキストフィールド----------------------------
    
    
    
    //---------------------------ホームに戻る-------------------------------
    @IBAction func home(){
    self.dismissViewControllerAnimated(true, completion: nil)
    //---------------------------ホームに戻る-------------------------------
    }
}
