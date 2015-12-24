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
    
    var delegate: APIWrapper500pxDelegate?
    
    public func popularPhotos(consumerKey: String) {
        
        self.popularPhotos(consumerKey, resultPageNumber: 1)
    }
    
    public func popularPhotos(consumerKey: String, resultPageNumber: Int) {
        
        let session = NSURLSession.sharedSession()
        
        let url500pxString = baseURL + popularPhotosMethod + "&consumer_key=\(consumerKey)" + "&page=\(resultPageNumber)"
        if let url = NSURL(string: url500pxString) {
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                self.delegate?.APIWrapperWillStartAccesing(self)
            })
            
            let task = session.dataTaskWithURL(url) { (data: NSData?, response: NSURLResponse?, error: NSError?) -> Void in
                // parsear el json
                let parser = JSONParser500px()
                if let data = data {
                    let result = parser.parse(data)
                    
                    dispatch_async(dispatch_get_main_queue(), { () -> Void in
                        self.delegate?.APIWrapperDidFinish(self, photolist: result)
                    })
                    
                }
                print(data)
                
            }
            
            task.resume()
        }
    }

}