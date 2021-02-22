//
//  TaskSwiftUIApp.swift
//  TaskSwiftUI
//
//  Created by Sergey Lukaschuk on 22.02.2021.
//

import SwiftUI

@main
struct TaskSwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
