//
//  AppDelegate.swift
//  PhotoViewer
//
//  Created by Erik Sebastian de Erice on 23/11/15.
//  Copyright © 2015 Red Monster Studio. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        let wrapper: APIWrapper500pxProtocol = APIWrapper500pxMock()
        let photoList = wrapper.popularPhotos("key")
        
        let nav = window?.rootViewController as! UINavigationController
        let rootViewController = nav.topViewController as! PhotoListViewController
        
        rootViewController.photoList = photoList  // property dependency injection
        
        // typhoon -> framework de inyección de dependencias
        
        return true
    }


}

