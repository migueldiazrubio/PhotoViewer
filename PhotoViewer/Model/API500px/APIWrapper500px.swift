//
//  APIWrapper500px.swift
//  PhotoViewer
//
//  Created by Erik Sebastian de Erice on 10/12/15.
//  Copyright © 2015 Red Monster Studio. All rights reserved.
//

import Foundation

public class APIWrapper500px: APIWrapper500pxProtocol {
    
    let baseURL = "https://api.500px.com/v1/photos"
    let popularPhotosMethod = "?feature=popular"
    //"&consumer_key=vBl2BWQtD9tACXGwMvifaR5LUVoErWKSRI09eQlA"
    
    public func popularPhotos(consumerKey: String) -> PhotoList {
        
        return self.popularPhotos(consumerKey, resultPageNumber: 1)
    }
    
    public func popularPhotos(consumerKey: String, resultPageNumber: Int) -> PhotoList {
        
        let result: PhotoList = PhotoList()
        
        let session = NSURLSession.sharedSession()
        
        let url500pxString = baseURL + popularPhotosMethod + "&consumer_key=\(consumerKey)" + "&page=\(resultPageNumber)"
        if let url = NSURL(string: url500pxString) {
            let task = session.dataTaskWithURL(url) { (data: NSData?, response: NSURLResponse?, error: NSError?) -> Void in
                // parsear el json
                print(data)
            }
            
            task.resume()
        }
        return result
    }

}