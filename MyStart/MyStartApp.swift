//
//  MyStartApp.swift
//  MyStart
//
//  Created by Abduqaxxor on 28/1/22.
//

import SwiftUI

@main
struct MyStartApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            Homescreen()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
