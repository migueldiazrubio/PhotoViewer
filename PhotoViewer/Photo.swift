//
//  Photo.swift
//  PhotoViewer
//
//  Created by Erik Sebastian de Erice on 23/11/15.
//  Copyright © 2015 Red Monster Studio. All rights reserved.
//

import Foundation

class Photo {
    
    var phoyoId: Int
    var name: String
    var photoURL: String?
    var photoDescription: String?
    var width: Int?
    var height: Int?
    
    convenience init(let photoID: Int, let name: String) {
        
        self.init(photoID: photoID, name: name, photoURL: "http://", photoDescription: "", width: 0, height: 0)
    }
    
    init(let photoID: Int, let name: String, photoURL: String, photoDescription: String, width: Int, height: Int) {
        
        self.phoyoId = photoID
        self.name = name
        self.photoURL = photoURL
        self.photoDescription = photoDescription
        self.width = width
        self.height = height
    }
    
}