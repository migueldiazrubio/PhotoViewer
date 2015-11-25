//
//  CollectionProtocol.swift
//  PhotoViewer
//
//  Created by Erik Sebastian de Erice on 25/11/15.
//  Copyright © 2015 Red Monster Studio. All rights reserved.
//

import Foundation

protocol CollectionProtocol {
    
    typealias T
    
    func count() -> Int
    func add(element: T)
    func elementAt(position: Int) -> T?
    func getAll() -> [T]
    
}