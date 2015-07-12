//
//  OutsideTimeCollectionViewController.swift
//  Outside Time
//
//  Created by Andrew Brandt on 7/12/15.
//  Copyright (c) 2015 laziestSusan. All rights reserved.
//

import UIKit

let reuseIdentifier = "OutsideCell"

class OutsideTimeCollectionViewController: UICollectionViewController {

    var bands: NSArray = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        if let file = NSBundle.mainBundle().pathForResource("Bands", ofType: "plist") {
            if let dict = NSArray(contentsOfFile: file) {
                bands = dict
            }
        }

        // Register cell classes
        //self.collectionView!.registerClass(OutsideTimeCollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return bands.count
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! OutsideTimeCollectionViewCell
    
        // Configure the cell
        //cell.backgroundColor = UIColor.whiteColor()
        if let path = NSBundle.mainBundle().pathForResource(bands[indexPath.row]["file_path"] as! String, ofType: "jpg", inDirectory: "bands") {
            if let image = UIImage(contentsOfFile: path) {
                cell.bandImageCell.image = image
                //cell.backgroundView?.addSubview(UIImageView(image: image))
            }
        }

        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
    
    }
    */

}
