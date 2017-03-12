//
//  AppDelegate.swift
//  FilesAndDirectories
//
//  Created by WuQiang on 2017/3/12.
//  Copyright © 2017年 WuQiang. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {
        let manager = FileManager.default
        let documents = manager.urls(for: .documentDirectory, in: .userDomainMask)
        let docURL = documents.first!
        
        let newDirectoryURL = docURL.appendingPathComponent("myfiles")
        let path = newDirectoryURL.path
        do {
            try manager.createDirectory(atPath: path, withIntermediateDirectories: false, attributes: nil)
        } catch {
            print("The directory already exists")
        }
        return true
    }
}
