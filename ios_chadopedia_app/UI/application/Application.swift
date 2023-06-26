//
//  Application.swift
//  ios_chadopedia_app
//
//  Created by fan on 2023/6/25.
//

import Foundation
import UIKit

final class Application {
    static let shared = Application()
    
    func configureMainInterface(in window: UIWindow) {
        // 加入 BtmBar 要用的 UINavigationController
        let indexNavi = UINavigationController(rootViewController: HomeViewController())
        indexNavi.tabBarItem = UITabBarItem(title: "First", image: UIImage(named: "first"), selectedImage: nil)

        let searchNavi = UINavigationController(rootViewController: SearchViewController())
        searchNavi.tabBarItem = UITabBarItem(title: "Second", image: UIImage(named: "second"), selectedImage: nil)
        
        let settingNavi = UINavigationController(rootViewController: SettingViewController())
        settingNavi.tabBarItem = UITabBarItem(title: "Third", image: UIImage(named: "third"), selectedImage: nil)

        // Gomaji 內的 GRootViewController
        let rootViewController = UITabBarController()
        rootViewController.viewControllers = [indexNavi,searchNavi,settingNavi]
        window.rootViewController = rootViewController
    }
}
