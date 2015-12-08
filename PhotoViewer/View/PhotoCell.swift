//
//  PhotoCell.swift
//  PhotoViewer
//
//  Created by Erik Sebastian de Erice on 1/12/15.
//  Copyright © 2015 Red Monster Studio. All rights reserved.
//

import UIKit

class PhotoCell: UICollectionViewCell {
    
    @IBOutlet weak var photoImage: UIImageView!
    @IBOutlet weak var photoTitle: UILabel!
    
    var photo: Photo? {
        
        didSet {
            self.photoTitle.text = photo?.name
            self.photoImage.image = UIImage(named: "dogPlaceholder")
            
            // Grand Central Dispatch
            let queue: dispatch_queue_t = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0)
            dispatch_async(queue) { () -> Void in
                
                let image = self.photo?.photoURL?.loadImage() // background
                dispatch_sync(dispatch_get_main_queue(), { () -> Void in
                    
                    self.photoImage.image = image   //main thread
                })
            }
        }
    }
}
