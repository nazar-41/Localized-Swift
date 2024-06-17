//
//  LocalizedView.swift
//
//
//  Created by Nazar Velkakayev on 17.06.2024.
//

import SwiftUI

@available(watchOS 6.0, *)
@available(macOS 10.15, *)
@available(iOS 14.0, *)
public struct LocalizedView<Content: View>: View {
    @ViewBuilder let content: Content
    @AppStorage("localizedLang") private var language: String = ""
    @StateObject private var manager: LocalizationManager = .init()
    
    public init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    public var body: some View {
        content
            .environmentObject(manager)
            .environment(\.locale, .init(identifier: language))
    }
}

@available(watchOS 6.0, *)
@available(macOS 10.15, *)
@available(iOS 14.0, *)
#Preview {
    LocalizedView{
        
    }
}
