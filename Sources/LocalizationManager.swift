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
    @AppStorage("localizedLang") var language: String = ""
    
    public init(){}
    
    public func setLanguage(_ lang: String){
        DispatchQueue.main.async{
            self.language = lang
        }
    }
}
