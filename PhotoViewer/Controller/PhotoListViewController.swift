//
//  ViewController.swift
//  PhotoViewer
//
//  Created by Erik Sebastian de Erice on 23/11/15.
//  Copyright © 2015 Red Monster Studio. All rights reserved.
//

import UIKit

class PhotoListViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, APIWrapper500pxDelegate {
    
    var photoList: PhotoList?
    let wrapper: APIWrapper500px = APIWrapper500px()
    
    @IBOutlet weak var photoCollection: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.getDataFrom500pxServers()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func getDataFrom500pxServers() {
        
        wrapper.delegate = self
        wrapper.popularPhotos("vBl2BWQtD9tACXGwMvifaR5LUVoErWKSRI09eQlA")
    }
    
    func APIWrapperWillStartAccesing(apiWrapper: APIWrapper500pxProtocol) {
        
        
    }
    
    func APIWrapperDidFinish(apiWrapper: APIWrapper500pxProtocol, photolist: PhotoList) {
        
        self.photoList = photolist
        self.photoCollection.reloadData()
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

