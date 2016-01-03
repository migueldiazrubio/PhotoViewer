//
//  PhotoListViewController+UICollectionViewDelegate.swift
//  PhotoViewer
//
//  Created by Erik Sebastian de Erice on 3/1/16.
//  Copyright © 2016 Red Monster Studio. All rights reserved.
//

import UIKit

extension PhotoListViewController {
    
    // MARK: CollectionViewDelegate Methods
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        if let photo = self.photoList?.elementAt(indexPath.row) {
            
            let vc = self.storyboard?.instantiateViewControllerWithIdentifier("DetailPhotoViewController") as! DetailPhotoViewController
            vc.photo = photo
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        let elementCount: Int
        
        if let photoList = self.photoList {
            elementCount = photoList.count()
        } else {
            elementCount = 0
        }
        
        return elementCount
        
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("PhotoCell", forIndexPath: indexPath) as! PhotoCell
        
        let photo = self.photoList?.elementAt(indexPath.row)
        
        cell.photo = photo
        
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        return CGSizeMake(180, 180)
    }
    
    

}