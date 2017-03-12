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
        
        let originURL = docURL.appendingPathComponent("myfiles/anotherfile.txt")
        let destinationURL = docURL.appendingPathComponent("anotherfile.txt")
        let originPath = originURL.path
        let destinationPath = destinationURL.path
        do {
            try manager.copyItem(atPath: originPath, toPath: destinationPath)
        } catch {
            print("File was not copied")
        }
        return true
    }
}
