//
//  AppDelegate.swift
//  billboard
//
//  Created by 이동기 on 2022/07/06.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        
        
        
        sleep(1) // 코드가 엄청 길어서 자체적으로 5초 이상 걸릴 경우 추가적으로 시간이 걸려버리기 때문에 지양하는 것이 좋다.  ㅜ
        
        return true
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        // melon, youtube - 사용자가 프리미엄 결제 했으면 영상 그대로 play, 안 했으면 일시 정지
        
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        // 포그라운드 >> 액티브 상태로 돌아온거라고 보면 됨
        // youtube - 결제 안 한 사람에게 팝업창 띄워
        // kakaotalk -
        // 금융앱 - 백그라운드에 있을 때 화면을 블러처리 해주는 기능
    }

    // MARK: UISceneSession Lifecycle

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

