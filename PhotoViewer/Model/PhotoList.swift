//
//  PhotoList.swift
//  PhotoViewer
//
//  Created by Erik Sebastian de Erice on 25/11/15.
//  Copyright © 2015 Red Monster Studio. All rights reserved.
//

import Foundation

public class PhotoList: CollectionProtocol {
    
    var list: [Photo]? = []
    
    public func count() -> Int
    {
        if let list = self.list {
            return list.count
        } else {
            return 0
        }
    }
    
    public func add(element: Photo)
    {
        self.list?.append(element)
    }
    
    public func elementAt(position: Int) -> Photo?
    {
        if let list = self.list {
            return list[position]
        } else {
            return nil
        }
    }
    
    public func getAll() -> [Photo]
    {
        return self.list!
    }
}