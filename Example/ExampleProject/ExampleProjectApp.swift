//
//  ExampleProjectApp.swift
//  ExampleProject
//
//  Created by Nazar Velkakayev on 17.06.2024.
//

import SwiftUI
import Localized_Swift

@main
struct ExampleProjectApp: App {
    var body: some Scene {
        WindowGroup{
            LocalizedView {
                ContentView()
            }
        }
    }
}
