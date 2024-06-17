//
//  LocalizationManager.swift
//
//
//  Created by Nazar Velkakayev on 17.06.2024.
//

import Foundation
import SwiftUI

@available(watchOS 6.0, *)
@available(macOS 10.15, *)
@available(iOS 14.0, *)
public class LocalizationManager: ObservableObject{
    @AppStorage("localizedLang") public var language: String = ""
    
    public init(){}
}
