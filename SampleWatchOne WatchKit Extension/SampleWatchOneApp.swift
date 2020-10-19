//
//  SampleWatchOneApp.swift
//  SampleWatchOne WatchKit Extension
//
//  Created by Jose Flavio Quispe on 10/7/20.
//

import SwiftUI

@main
struct SampleWatchOneApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
