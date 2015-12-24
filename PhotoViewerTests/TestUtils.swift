//
//  TestUtils.swift
//  PhotoViewer
//
//  Created by Erik Sebastian de Erice on 22/12/15.
//  Copyright © 2015 Red Monster Studio. All rights reserved.
//

import Foundation

// Utility function to read Stub Files (useful for Unit Testing). Needs JSON Stub fileName and the test class using it

func readStubFile(fileName: String, testClass: AnyClass) -> NSData {
    let bundle = NSBundle(forClass: testClass)
    let path: String = bundle.pathForResource(fileName, ofType: "json")!
    let jsonData = NSData(contentsOfFile: path)
    return jsonData!
}