//
//  LocalizationService.swift
//
//
//  Created by Nazar Velkakayev on 20.06.2024.
//

import Foundation

fileprivate enum Keys: String{
    case localizedLang
}

public class LocalizationService{
    static var language: String {
        get { UserDefaults.standard.string(forKey: Keys.localizedLang.rawValue) ?? "" }
        set { UserDefaults.standard.setValue(newValue, forKey: Keys.localizedLang.rawValue) }
    }
    
    public static func setLanguage(_ lang: String){
        LocalizationService.language = lang
    }
}
