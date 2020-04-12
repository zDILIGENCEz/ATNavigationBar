//
//  AppDelegate.swift
//  ATNavigationBar
//
//  Created by zDILIGENCEz on 09/03/2019.
//  Copyright (c) 2019 zDILIGENCEz. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    lazy private var router = RootRouter()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        let controller  = ExampleViewController()
        window?.rootViewController = controller
        window?.makeKeyAndVisible()
        return true
    }

}

