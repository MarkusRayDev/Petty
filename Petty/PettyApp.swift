//
//  PettyApp.swift
//  Petty
//
//  Created by Markus Ray on 29.06.2026.
//

import SwiftUI

@main
struct PettyApp: App {
#if os(macOS)
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate: AppDelegate
#else
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate: AppDelegate
#endif
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
