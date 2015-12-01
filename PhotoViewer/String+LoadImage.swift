//
//  String+LoadImage.swift
//  PhotoViewer
//
//  Created by Erik Sebastian de Erice on 1/12/15.
//  Copyright © 2015 Red Monster Studio. All rights reserved.
//

import UIKit

extension String {
    
    func loadImage() -> UIImage
    {
        if let url = NSURL(string: self), let data = NSData(contentsOfURL: url), let image = UIImage(data: data) {
            
            return image
        }
        return UIImage()
    }
}