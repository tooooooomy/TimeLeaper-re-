//
//  FutureHome.swift
//  TimeLeaper
//
//  Created by 諸星智也 on 2015/06/17.
//  Copyright (c) 2015年 諸星智也. All rights reserved.
//
import UIKit
import Foundation
class FutureHome: UIViewController{
    
    var appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate //AppDelegateオブジェクトの呼び出し
    
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


    //datepickerの値を受け渡し
    @IBAction func SetTime(sender: AnyObject) {
        appDelegate.GetDate = picker.date
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
