//
//  SnowSeekerApp.swift
//  SnowSeeker
//
//  Created by Artem Paliutin on 20/05/2022.
//

import SwiftUI

@main
struct SnowSeekerApp: App {
    @StateObject var resortVM = ResortViewModel()
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(resortVM)
        }
    }
}
