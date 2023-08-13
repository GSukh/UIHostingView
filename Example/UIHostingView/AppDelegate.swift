//
//  AppDelegate.swift
//  UIHostingView
//
//  Created by Grigoriy Sukhorukov on 08/12/2023.
//  Copyright (c) 2023 Grigoriy Sukhorukov. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        let window = UIWindow()
        window.rootViewController = ViewController()
        window.makeKeyAndVisible()
        self.window = window
        
        return true
    }

}

