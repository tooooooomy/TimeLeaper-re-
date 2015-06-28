//
//  PastHome.swift
//  TimeLeaper
//
//  Created by 諸星智也 on 2015/06/17.
//  Copyright (c) 2015年 諸星智也. All rights reserved.
//
import UIKit
import Foundation

class PastHome: UIViewController {
    
    var appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    
    @IBOutlet weak var photoPicker: UIDatePicker! //DatePicker
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func SetPhotoTime(sender: AnyObject) {
        
        appDelegate.PhotoDate = photoPicker.date
        
    }
    
    
    //ホームに戻る
    @IBAction func home(){
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
