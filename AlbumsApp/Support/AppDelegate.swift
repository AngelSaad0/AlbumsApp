//
//  AppDelegate.swift
//  AlbumsApp
//
//  Created by Engy on 28/12/2024.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let navigationController = UINavigationController(rootViewController: AlbumsViewController())
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        return true
    }


}

