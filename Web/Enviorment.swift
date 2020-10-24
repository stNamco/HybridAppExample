//
//  Enviorment.swift
//  Web
//
//  Created by kazuhiro nanko on 2020/10/24.
//

import SwiftUI

struct MainURLStringKey: EnvironmentKey {
    public static var defaultValue: String? {
        return "https://www.apple.com"
    }
}

extension EnvironmentValues {
    public var mainURLString: String? {
        get {
            return self[MainURLStringKey.self]
        }
        set {
            self[MainURLStringKey.self] = newValue
        }
    }
}
