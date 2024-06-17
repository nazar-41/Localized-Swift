//
//  File.swift
//  
//
//  Created by Nazar Velkakayev on 17.06.2024.
//

import Foundation
import SwiftUI

public extension String{
    var localized: String{
        return NSLocalizedString(self, comment: "")
    }
}
