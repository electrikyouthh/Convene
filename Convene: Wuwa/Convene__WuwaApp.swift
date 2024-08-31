// (c) 2024 and onwards WuWa Helper (AGPL v3.0 License or later).
// ====================
// This code is released under the SPDX-License-Identifier: `AGPL-3.0-or-later`.

import WUAccountKit
import WUBaseKit
import WUHelper
import SwiftData
import SwiftUI

@main
@MainActor
struct Convene: Convene__WuwaApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.horizontalSizeClass, .compact)
            #if targetEnvironment(mac)
                .frame(minWidth: 600, minHeight: 800)
            #endif
        }
        .windowResizability(.contentMinSize)
        .modelContainer(persistenceController.modelContainer)
    }
}
