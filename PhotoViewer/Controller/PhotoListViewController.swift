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
    let refreshControl = UIRefreshControl()
    
    @IBOutlet weak var photoCollection: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Add a Pull to refresh Control
        refreshControl.addTarget(self, action: "getDataFrom500pxServers", forControlEvents: .ValueChanged)
        photoCollection.addSubview(refreshControl)
        
        
        self.getDataFrom500pxServers()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func getDataFrom500pxServers() {
        
        wrapper.delegate = self
        wrapper.popularPhotos("vBl2BWQtD9tACXGwMvifaR5LUVoErWKSRI09eQlA")
    }
    
    func APIWrapperWillStartAccesing(apiWrapper: APIWrapper500pxProtocol) {
        
        self.refreshControl.beginRefreshing()
    }
    
    func APIWrapperDidFinish(apiWrapper: APIWrapper500pxProtocol, photolist: PhotoList) {
        
        self.photoList = photolist
        self.photoCollection.reloadData()
        self.refreshControl.endRefreshing()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "ShowDetail" {
            if let indexPath = self.photoCollection.indexPathsForSelectedItems()!.first {
                
                if let photo = self.photoList?.elementAt(indexPath.row) {
                    let detailVC = segue.destinationViewController as! DetailPhotoViewController
                    detailVC.detailTitle.text = photo.photoDescription!
                    detailVC.detailImage.image = photo.photoURL?.loadImage()
                }
            }
        }
    }
    
}

