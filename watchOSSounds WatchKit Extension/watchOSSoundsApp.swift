//
//  watchOSSoundsApp.swift
//  watchOSSounds WatchKit Extension
//
//  Created by Cloutier, Vincent on 2020-11-19.
//

import SwiftUI

@main
struct watchOSSoundsApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
