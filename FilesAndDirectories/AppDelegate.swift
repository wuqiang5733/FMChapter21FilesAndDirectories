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
        
        let newFileURL = docURL.appendingPathComponent("mytext.txt")
        let path = newFileURL.path
        manager.createFile(atPath: path, contents: nil, attributes: nil)
        return true
    }
}
