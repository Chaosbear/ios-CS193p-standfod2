//
//  EmojiArtApp.swift
//  EmojiArt
//
//  Created by Sukrit Chatmeeboon on 28/1/2565 BE.
//

import SwiftUI

@main
struct EmojiArtApp: App {

    @StateObject var paletteStore = PaletteStore(named: "Default")
    
    var body: some Scene {
        DocumentGroup(newDocument: { EmojiArtDocument() }) { config in
            EmojiArtDocumentView(document: config.document)
                .environmentObject(paletteStore)
        }
    }
}
