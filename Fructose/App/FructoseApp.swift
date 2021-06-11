//
//  FructoseApp.swift
//  Fructose
//
//  Created by Brian Lee on 2021/06/11.
//

import SwiftUI

@main
struct FructoseApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnBoardingView(fruits: fruitsData)
            } else {
                ContentView(fruits: fruitsData)
            }
        }
    }
}
