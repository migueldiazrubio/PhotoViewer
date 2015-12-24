//
//  500pxJSONParser.swift
//  PhotoViewer
//
//  Created by Erik Sebastian de Erice on 22/12/15.
//  Copyright © 2015 Red Monster Studio. All rights reserved.
//

import Foundation

public class JSONParser500px {
    
    public init() {
        
    }
    
    public func parse(data: NSData) -> PhotoList {
        
        let photoList = PhotoList()
        
        do {
            let json = try NSJSONSerialization.JSONObjectWithData(data, options: .AllowFragments) as! NSDictionary
            
            let photos = json["photos"] as! NSArray
            
            for i in 0 ..< photos.count {
                let jsonPhoto = photos[i] as! NSDictionary
                
                if let width = jsonPhoto["width"] as? Int,
                    let height = jsonPhoto["height"] as? Int,
                    let id = jsonPhoto["id"] as? Int,
                    let name = jsonPhoto["description"] as? String,
                    let photoURL = jsonPhoto["image_url"] as? String,
                    let photoDescription = jsonPhoto["description"] as? String {
                        
                        if !name.isEmpty {
                            let photo = Photo(photoID: id, name: name, photoURL: photoURL, photoDescription: photoDescription, width: width, height: height)
                            photoList.add(photo)
                        }
                }
                
            }
            
        } catch {
            print(error)
        }
        
        return photoList
    }
}