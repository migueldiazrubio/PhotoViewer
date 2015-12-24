//
//  APIWrapper500pxDelegate.swift
//  PhotoViewer
//
//  Created by Erik Sebastian de Erice on 24/12/15.
//  Copyright © 2015 Red Monster Studio. All rights reserved.
//

import Foundation

public protocol APIWrapper500pxDelegate {
    
    func APIWrapperWillStartAccesing(apiWrapper: APIWrapper500pxProtocol);
    func APIWrapperDidFinish(apiWrapper: APIWrapper500pxProtocol, photolist: PhotoList)
}