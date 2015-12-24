//
//  APIWrapper500pxMock.swift
//  PhotoViewer
//
//  Created by Erik Sebastian de Erice on 25/11/15.
//  Copyright © 2015 Red Monster Studio. All rights reserved.
//

import Foundation

public class APIWrapper500pxMock: APIWrapper500pxProtocol {
    
    let perretePhotos = ["https://lh3.googleusercontent.com/E6EO3XO6zP7NtBq2L9SDF1DbBoYamUWc8QTRvOFuQg_Gka2Vw_RIv-AjU5Ysu4XgwHU=w170", "https://elrubiusomgyoutube.files.wordpress.com/2014/09/f3d4e-10684243_610278742425057_638483850_n.jpg?w=788", "https://lh3.ggpht.com/KWH-9MnQWsKwIWIolXcoCe5JiMXHvV8w_3J91FSBSp4uSThh5RvkOuG7MjfBH9np_IQ=w300"]
    
    public init()
    {
        
    }
    
    public func popularPhotos(consumerKey: String) -> PhotoList {
        
        let photoList = PhotoList()
        
        for i in 0..<200 {
            let photo = Photo(photoID: i, name: "Photo \(i)")
            let r = rand()
            let idx = Int(r % Int32(perretePhotos.count))
            
            photo.photoURL = perretePhotos[idx]
            photoList.add(photo)
        }
        
        return photoList
    }
    
    public func popularPhotos(consumerKey: String, resultPageNumber: Int) -> PhotoList
    {
        return self.popularPhotos(consumerKey)
        
    }
}