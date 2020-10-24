//
//  QRCodeReaderWireframe.swift
//  Wireframe
//
//  Created by kazuhiro nanko on 2020/10/24.
//

import SwiftUI

public protocol QRCodeReaderWireframe {
    func generateView(data: String) -> AnyView
}
