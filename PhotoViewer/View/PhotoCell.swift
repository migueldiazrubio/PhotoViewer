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
            self.photoImage.image = photo?.photoURL?.loadImage()
        }
    }
}
