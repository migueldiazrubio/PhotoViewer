//
//  User.swift
//  PhotoViewer
//
//  Created by Erik Sebastian de Erice on 23/11/15.
//  Copyright © 2015 Red Monster Studio. All rights reserved.
//

import Foundation

public class User {
    
    public var userId: Int
    public var userName: String
    
    public init (userId: Int, userName: String) {
        
        self.userId = userId
        self.userName = userName
    }
    
}