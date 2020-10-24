//
//  Router.swift
//  Web
//
//  Created by kazuhiro nanko on 2020/10/24.
//

import SwiftUI
import Wireframe

public struct Router: WebWireframe {

    public init() {}

    public func generateView() -> AnyView {
        AnyView(
            WebView(
                urlString: "https://www.apple.com"
            )
        )
    }
}
