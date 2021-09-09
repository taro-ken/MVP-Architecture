//
//  AppDelegate.swift
//  MVP-Architecture
//
//  Created by 木元健太郎 on 2021/09/07.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
//        let window = UIWindow()
//        Router.showRoot(window: window)
//        self.window = window
        Router.shared.showRoot(window: UIWindow(frame: UIScreen.main.bounds))
        return true
    }

   


}

