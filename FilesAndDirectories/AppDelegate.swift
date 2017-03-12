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
        
        let fileURL = docURL.appendingPathComponent("myfiles/mytext.txt")
        let filePath = fileURL.path
        if let attributes = try? manager.attributesOfItem(atPath: filePath) {
            let type = attributes[.type] as! FileAttributeType
            let size = attributes[.size] as! Int
            let date = attributes[.creationDate] as! Date
            if type != FileAttributeType.typeDirectory {
                print("Name: \(fileURL.lastPathComponent)")
                print("Size: \(size)")
                print("Created: \(date)")
            }
        }
        return true
    }
}
