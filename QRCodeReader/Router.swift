//
//  Router.swift
//  QRCodeReader
//
//  Created by kazuhiro nanko on 2020/10/24.
//

import Wireframe
import SwiftUI

public struct Router: QRCodeReaderWireframe {
    public init() {}

    public func generateView(data: String) -> AnyView {
        AnyView(
            QRCodeReaderView(data: data)
        )
    }
}
