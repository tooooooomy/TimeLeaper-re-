//
//  PastTime.swift
//  TimeLeaper
//
//  Created by 諸星智也 on 2015/06/18.
//  Copyright (c) 2015年 諸星智也. All rights reserved.
//

import Foundation
import UIKit

class PastTime: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //ホームに戻る
    
    @IBAction func backhome(){
        
        self.presentingViewController?.presentingViewController?.dismissViewControllerAnimated(true, completion: nil)
        
    }
    
}