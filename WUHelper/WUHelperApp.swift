//
//  WUHelperApp.swift
//  WUHelper
//
//  Created by Mila Masaya on 8/31/24.
//

import SwiftUI
import SwiftData
import UniformTypeIdentifiers

@main
struct WUHelperApp: App {
    var body: some Scene {
        DocumentGroup(editing: .itemDocument, migrationPlan: WUHelperMigrationPlan.self) {
            ContentView()
        }
    }
}

extension UTType {
    static var itemDocument: UTType {
        UTType(importedAs: "com.example.item-document")
    }
}

struct WUHelperMigrationPlan: SchemaMigrationPlan {
    static var schemas: [VersionedSchema.Type] = [
        WUHelperVersionedSchema.self,
    ]

    static var stages: [MigrationStage] = [
        // Stages of migration between VersionedSchema, if required.
    ]
}

struct WUHelperVersionedSchema: VersionedSchema {
    static var versionIdentifier = Schema.Version(1, 0, 0)

    static var models: [any PersistentModel.Type] = [
        Item.self,
    ]
}
