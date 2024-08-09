//
//  SceneDelegate.swift
//  NavigationUIKit
//
//  Created by Dini on 08/08/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }

        window = UIWindow(windowScene: windowScene)

        // THIS / Initialize the Tab Bar Controller
        let tabBarController = UITabBarController()

        // THIS / Setup the First Tab with a UINavigationController
        let firstViewController = FirstViewController()
        let navigationController = UINavigationController(rootViewController: firstViewController)
        navigationController.tabBarItem = UITabBarItem(title: "Navigation", image: UIImage(systemName: "1.circle"), tag: 0)

        // Setup the Second Tab with a UISplitViewController
        let splitViewController = UISplitViewController()
        
        // THIS
        let masterViewController = SplitViewController(style: .plain)
        let detailViewController = SplitDetailViewController()
        // THIS
        
        let masterNavigationController = UINavigationController(rootViewController: masterViewController)
        let detailNavigationController = UINavigationController(rootViewController: detailViewController)
        splitViewController.viewControllers = [masterNavigationController, detailNavigationController]
        
        // THIS
        splitViewController.tabBarItem = UITabBarItem(title: "Split View", image: UIImage(systemName: "2.circle"), tag: 1)

        // THIS / Setup the Third Tab with a ButtonsViewController
        let buttonsViewController = OverlayViewController()
        buttonsViewController.tabBarItem = UITabBarItem(title: "Buttons", image: UIImage(systemName: "3.circle"), tag: 2)

        // THIS / Add view controllers to the Tab Bar Controller
        tabBarController.viewControllers = [navigationController, splitViewController, buttonsViewController]

        // THIS / Set the Tab Bar Controller as the root view controller
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

