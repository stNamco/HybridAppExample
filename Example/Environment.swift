//
//  Environment.swift
//  Example
//
//  Created by kazuhiro nanko on 2020/10/24.
//

import SwiftUI

public struct DefaultURLKey: EnvironmentKey {
    public static var defaultValue: String? {
        return "https://www.apple.com"
    }
}

extension EnvironmentValues {
    public var defaultURLString: String? {
        get {
            return self[DefaultURLKey.self]
        }
        set {
            self[DefaultURLKey.self] = newValue
        }
    }
}
