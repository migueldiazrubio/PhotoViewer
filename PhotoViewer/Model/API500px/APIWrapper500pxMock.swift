//
//  APIWrapper500pxMock.swift
//  PhotoViewer
//
//  Created by Erik Sebastian de Erice on 25/11/15.
//  Copyright © 2015 Red Monster Studio. All rights reserved.
//

import Foundation

public class APIWrapper500pxMock: APIWrapper500pxProtocol {
    
    public init()
    {
        
    }
    
    public func popularPhotos(consumerKey: String) -> PhotoList {
        
        let photoList = PhotoList()
        
        for i in 0..<20 {
            let photo = Photo(photoID: i, name: "Photo \(i)")
            
            photoList.add(photo)
        }
        
        return photoList
    }
}