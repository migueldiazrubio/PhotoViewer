//
//  Photo.swift
//  PhotoViewer
//
//  Created by Erik Sebastian de Erice on 23/11/15.
//  Copyright © 2015 Red Monster Studio. All rights reserved.
//

import Foundation

public class Photo {
    
    public var photoID: Int
    public var name: String
    public var photoURL: String?
    public var photoDescription: String?
    public var width: Int?
    public var height: Int?
    
    public convenience init(let photoID: Int, let name: String) {
        
        self.init(photoID: photoID, name: name, photoURL: "http://", photoDescription: "", width: 0, height: 0)
    }
    
    public init(let photoID: Int, let name: String, photoURL: String, photoDescription: String, width: Int, height: Int) {
        
        self.photoID = photoID
        self.name = name
        self.photoURL = photoURL
        self.photoDescription = photoDescription
        self.width = width
        self.height = height
    }
    
}