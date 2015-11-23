//
//  PhotoTests.swift
//  PhotoViewer
//
//  Created by Erik Sebastian de Erice on 23/11/15.
//  Copyright © 2015 Red Monster Studio. All rights reserved.
//

import XCTest
import PhotoViewer

class PhotoTests: XCTestCase {
    
    func testCanCreateAPhotoUsingAnIdAndValidName() {
        
        let sut = Photo(photoID: 10, name: "My photo")
        XCTAssertEqual(10, sut.photoID)
        XCTAssertEqual("My photo", sut.name)
    }
    
    func testCanCreateAPhotoUsingDesignatedInit() {
        
        let sut = Photo(photoID: 10, name: "My Photo", photoURL: "url", photoDescription: "desc", width: 100, height: 120)
        XCTAssertEqual("url", sut.photoURL)
        XCTAssertEqual("desc", sut.photoDescription)
        XCTAssertEqual(100, sut.width)
        XCTAssertEqual(120, sut.height)
    }
}
