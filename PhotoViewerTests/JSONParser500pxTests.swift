//
//  JSONParser500pxTests.swift
//  PhotoViewer
//
//  Created by Erik Sebastian de Erice on 22/12/15.
//  Copyright © 2015 Red Monster Studio. All rights reserved.
//

import XCTest
import PhotoViewer

class JSONParser500pxTests: XCTestCase {
    
    func testWhenParsingDataParserShouldReturnEmptyListoOfPhotos() {
        
        let parser = JSONParser500px()
        
        let data: NSData = "".dataUsingEncoding(NSUTF8StringEncoding)!
        
        let sut = parser.parse(data)
        
        XCTAssertNotNil(sut)
        XCTAssertEqual(0, sut.count())
    }
    
    func testWhenParsingValidResponseShouldReturnSeveralValidPhotos() {
        
        let parser = JSONParser500px()
        
        let data = readStubFile("PopularPhotosStub", testClass: JSONParser500pxTests.self)
        
        let sut = parser.parse(data)
        
        XCTAssertNotNil(sut)
        XCTAssertEqual(16, sut.count())
        
        for photo in sut.getAll() {
            
            XCTAssertFalse(photo.photoDescription!.isEmpty)
            XCTAssertFalse(photo.name.isEmpty)
        }
    }
    
    
    
}
