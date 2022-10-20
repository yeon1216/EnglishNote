//
//  EnglishNoteApp.swift
//  EnglishNote
//
//  Created by BOBBY.KIM on 2022/10/20.
//

import SwiftUI

@main
struct EnglishNoteApp: App {
    var body: some Scene {
        
        let englishStore : EnglishStore = EnglishStore(englishes: englishData)
        
        WindowGroup {
            ContentView()
                .environmentObject(englishStore)
        }
    }
}
