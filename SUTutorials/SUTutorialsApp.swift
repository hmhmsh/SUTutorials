//
//  SUTutorialsApp.swift
//  SUTutorials
//
//  Created by 長谷川瞬哉 on 2021/01/11.
//

import SwiftUI

@main
struct SUTutorialsApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
