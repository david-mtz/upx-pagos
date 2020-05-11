//
//  AppDelegate.swift
//  UpxPagosDemo
//
//  Created by David on 11/05/20.
//  Copyright © 2020 Upax. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        let initialVC = TestViewController()
        initialVC.view.backgroundColor = .red
        window?.rootViewController = initialVC
        window?.makeKeyAndVisible()
        
        return true
    }

}

