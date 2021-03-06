//
//  AppDelegate.swift
//  ios-oss
//
//  Created by YYKJ0048 on 2020/11/24.
//

import UIKit
import SwifterSwift
import OAMyKit
import OALoginKit
import OALaunchKit
import OAComponentManagerKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        UIViewController.doBadSwizzleStuff()
        UIView.doBadSwizzleStuff()
        configNavigationBar()
        
        TabBarConnector.instance().register()
        LaunchConnector.instance().register()
        LoginConnector.instance().register()
        MyConnector.instance().register()
                
        let vc = ComponentManager.viewControllerForURL(URL(string: "productScheme://ModuleLaunch")!)
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = vc
        window?.makeKeyAndVisible()

        return true
    }
}

extension AppDelegate {
    func login() {
//        window?.switchRootViewController(to: TabBarViewController.configureWith(), options: .transitionCrossDissolve)
    }
    
    func logout() {
//        let login = LoginConnector.instance().connectToOpenURL(Constants.Scheme.login, parameters: nil, completion: nil)!
//        window?.switchRootViewController(to: login, options: .transitionCrossDissolve)
    }
}

extension AppDelegate {
    /// 全局设置顶栏，以下属性除了特殊说明，其余在controller都可以自己控制显示方式，并且做到互不影响
    func configNavigationBar() {
        // 背景颜色
        UINavigationBar.appearance().barTintColor = .white
        // 导航按钮颜色
        UINavigationBar.appearance().tintColor = .black
        // 去掉下划线，除非有全局去掉的必要，否则不建议在这里使用，设置后子页不能手动设回来。解决：可由BaseController设置 hbd_barShadowHidden = true即可
        UINavigationBar.appearance().shadowImage = UIImage()
        // 设置全局标题颜色
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
        // 设置背景图后，显示优先级是最高的
//        UINavigationBar.appearance().setBackgroundImage(UIImage(named: "nav_bachground"), for: .default)
    }
}
