//
//  LString.swift
//
//
//  Created by Nazar Velkakayev on 17.06.2024.
//

import Foundation

public struct LString {
    let value: String

    public init(_ key: String) {
        self.value = NSLocalizedString(key, comment: "")
    }
}

extension LString: CustomStringConvertible {
    public var description: String {
        return value
    }
}
