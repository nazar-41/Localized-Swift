//
//  LText.swift
//
//
//  Created by Nazar Velkakayev on 17.06.2024.
//

import SwiftUI

@available(watchOS 6.0, *)
@available(macOS 10.15, *)
@available(iOS 14.0, *)
public struct LText: View {
    let text: String
    
    public init(_ text: String){
        self.text = text
    }
    
    public var body: some View {
        Text(LocalizedStringKey(text))
    }
}

@available(watchOS 6.0, *)
@available(macOS 10.15, *)
@available(iOS 14.0, *)
#Preview {
    LText("")
}
