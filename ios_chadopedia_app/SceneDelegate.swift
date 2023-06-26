//
//  SceneDelegate.swift
//  ios_chadopedia_app
//
//  Created by fan on 2023/6/22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    ///  當資源檔案加載完畢後，會在這裡處理初始頁面
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        guard UIApplication.shared.delegate is AppDelegate else { return }
        window = UIWindow(windowScene: windowScene)
        if (window != nil) {
            Application.shared.configureMainInterface(in: window!)
            window?.makeKeyAndVisible()
        }
    }
}
