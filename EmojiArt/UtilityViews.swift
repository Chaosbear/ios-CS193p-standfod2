//
//  utilityViews.swift
//  EmojiArt
//
//  Created by Sukrit Chatmeeboon on 28/1/2565 BE.
//

import SwiftUI

struct OptionalImage: View {
    var uiImage: UIImage?
    
    var body: some View {
        if uiImage != nil {
            Image(uiImage: uiImage!)
        }
    }
}

struct AnimatedActionButton: View {
    var title: String? = nil
    var systemImage: String? = nil
    let action: () -> Void
    
    var body: some View {
        Button {
            withAnimation{
                action()
                
            }
        } label: {
            if title != nil && systemImage != nil {
                Label(title!, systemImage: systemImage!)
            } else if title != nil {
                Text(title!)
            } else if systemImage != nil {
                Image(systemName: systemImage!)
            }
        }
    }
}

struct IdentifiableAlert: Identifiable {
    var id: String
    var alert:  () -> Alert
}
