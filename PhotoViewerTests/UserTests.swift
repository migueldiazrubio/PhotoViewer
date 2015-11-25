//
//  UserTests.swift
//  PhotoViewer
//
//  Created by Erik Sebastian de Erice on 25/11/15.
//  Copyright © 2015 Red Monster Studio. All rights reserved.
//

import XCTest
import PhotoViewer

class UserTests: XCTestCase {
    
    func testCanCreateAUserUsingAnIdAndValidName()
    {
        // sut = System Under Test
        let sut = User(userId: 10, userName: "Chiquito")
        XCTAssertEqual(10, sut.userId)
        XCTAssertEqual("Chiquito", sut.userName)
    }

    
}
