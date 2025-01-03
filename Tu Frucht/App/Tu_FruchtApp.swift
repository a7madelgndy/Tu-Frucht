//
//  Tu_FruchtApp.swift
//  Tu Frucht
//
//  Created by Ahmed El Gndy on 25/12/2024.
//

import SwiftUI

@main
struct Tu_FruchtApp: App {
    //MARK: PORPERTIES
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            }
            else  {
                 ContentView()
            }
           
        }
    }
}
