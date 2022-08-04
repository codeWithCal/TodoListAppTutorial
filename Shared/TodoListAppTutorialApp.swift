//
//  TodoListAppTutorialApp.swift
//  Shared
//
//  Created by Callum Hill on 31/7/2022.
//

import SwiftUI

@main
struct TodoListAppTutorialApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            
            let context = persistenceController.container.viewContext
            let dateHolder = DateHolder(context)
            
            TaskListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(dateHolder)
        }
    }
}
