//
//  PastTime.swift
//  TimeLeaper
//
//  Created by 諸星智也 on 2015/06/18.
//  Copyright (c) 2015年 諸星智也. All rights reserved.
//
import UIKit
import Photos

class PastTime: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    
    @IBOutlet weak var collectionView: UICollectionView!

    
    var photoAssets = [PHAsset]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        reload()
    }
    
    
    
    private func reload() {
        getAllPhotosInfo()
        collectionView.reloadData()
    }
    
    
    // -----------UICollectionViewDataSource---------------------
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photoAssets.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as! UICollectionViewCell
        
        let asset = photoAssets[indexPath.row]
        
        
        let imageView = cell.viewWithTag(1) as! UIImageView
        
        let manager: PHImageManager = PHImageManager()
        
        manager.requestImageForAsset(asset,
            targetSize: imageView.frame.size,
            contentMode: .AspectFill,
            options: nil) { (image, info) -> Void in
                imageView.image = image
        }
        
        return cell
    }
    // -----------UICollectionViewDataSource---------------------
    
    
    
    
    
    // ---------------Photos Framework------------------------
    
    private func getAllPhotosInfo() {
        photoAssets = []
        
        var options = PHFetchOptions()
        
        
        //取得した日付の年月日のみを取得
        /*let myCalendar: NSCalendar = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian)!
        var FromDate = myCalendar.components(NSCalendarUnit.CalendarUnitYear   |
            NSCalendarUnit.CalendarUnitMonth  |
            NSCalendarUnit.CalendarUnitDay    ,
            fromDate: appDelegate.PhotoDate!)
        println(FromDate)
        
        var FromDate_2 :
        
        
        let ToDate = myCalendar.dateByAddingUnit(.DayCalendarUnit, value: 1, toDate: FromDate, options: nil)!*/
        
        let calendar = NSCalendar(identifier: NSCalendarIdentifierGregorian)!

        let FromDate = calendar.dateBySettingHour(0, minute: 0, second: 0, ofDate: appDelegate.PhotoDate!, options: nil)!
        let ToDate = calendar.dateByAddingUnit(.DayCalendarUnit, value: 1, toDate: FromDate, options: nil)!
        
        println(FromDate)
        println(ToDate)
        
        
        //日付の指定
        options.predicate = NSPredicate(format: "(creationDate > %@) and (creationDate < %@)", FromDate,ToDate);

        
        
        
        options.sortDescriptors = [
            NSSortDescriptor(key: "creationDate", ascending: false)
        ]
        
        var assets: PHFetchResult = PHAsset.fetchAssetsWithMediaType(.Image, options: options)
        assets.enumerateObjectsUsingBlock { (asset, index, stop) -> Void in
            self.photoAssets.append(asset as! PHAsset)
        }
        println(photoAssets)
    }
    
    // ---------------Photos Framework------------------------
    
    
    
    //-------------------ホームに戻る---------------------------
    
    @IBAction func backhome(){
        
        self.presentingViewController?.presentingViewController?.dismissViewControllerAnimated(true, completion: nil)
        
    }
    //-------------------ホームに戻る---------------------------

    
    
}


