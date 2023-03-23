//
//  CrptoAppApp.swift
//  CrptoApp
//
//  Created by suraj kumar on 24/03/23.
//

import SwiftUI
@main
struct CrptoAppApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
        }
    }
}
