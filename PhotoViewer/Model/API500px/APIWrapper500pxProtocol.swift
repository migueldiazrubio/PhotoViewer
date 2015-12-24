//
//  APIWrapper500pxProtocol.swift
//  PhotoViewer
//
//  Created by Erik Sebastian de Erice on 25/11/15.
//  Copyright © 2015 Red Monster Studio. All rights reserved.
//

import Foundation

public protocol APIWrapper500pxProtocol {
    
    func popularPhotos(consumerKey: String)
    func popularPhotos(consumerKey: String, resultPageNumber: Int)

}