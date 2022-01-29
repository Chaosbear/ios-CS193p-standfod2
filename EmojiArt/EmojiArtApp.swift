//
//  EmojiArtApp.swift
//  EmojiArt
//
//  Created by Sukrit Chatmeeboon on 28/1/2565 BE.
//

import SwiftUI

@main
struct EmojiArtApp: App {
    let document = EmojiArtDocument()
    
    var body: some Scene {
        WindowGroup {
            EmojiArtDocumentView(document: document)
        }
    }
}
