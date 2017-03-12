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
        listItems(directory: docURL)
        return true
    }
    func listItems(directory: URL) {
        let manager = FileManager.default
        if let list = try? manager.contentsOfDirectory(atPath: directory.path) {
            if list.isEmpty {
                print("The directory is empty")
            } else {
                for item in list {
                    print(item)
                }
            }
        }
    }
}
