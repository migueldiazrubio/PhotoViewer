//
//  APIWrapper500pxTests.swift
//  PhotoViewer
//
//  Created by Erik Sebastian de Erice on 25/11/15.
//  Copyright © 2015 Red Monster Studio. All rights reserved.
//

import XCTest
import PhotoViewer

class APIWrapper500pxTests: XCTestCase {
    
    func testPopularPhotosAreNotEmpty()
    {
        let server: APIWrapper500pxProtocol = APIWrapper500pxMock()
        
        let sut: PhotoList = server.popularPhotos("consumerKey")
        
        XCTAssertNotNil(sut)
        XCTAssertEqual(20, sut.count())
    }
    
    func testPopularPhotosHaveName()
    {
        let server: APIWrapper500pxProtocol = APIWrapper500pxMock()
        
        let list: PhotoList = server.popularPhotos("consumerKey")
        
        for photo in list.getAll() {
            XCTAssertFalse(photo.name.isEmpty)
            XCTAssertTrue(photo.photoID >= 0)
        }
    }
    
}
