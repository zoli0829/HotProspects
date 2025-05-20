//
//  HotProspectsApp.swift
//  HotProspects
//
//  Created by Zoltan Vegh on 17/05/2025.
//

import SwiftData
import SwiftUI

@main
struct HotProspectsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Prospect.self)
    }
}
