//
//  QRCodeReaderView.swift
//  QRCodeReaderView
//
//  Created by kazuhiro nanko on 2020/10/24.
//

import SwiftUI

public struct QRCodeReaderView: View {
    
    public let data: String
    
    public var body: some View {
        Text("Hello, QRCodeReader!: \(data)")
    }
    
    public init(data: String) {
        self.data = data
    }
}

struct QRCodeReader_Previews: PreviewProvider {
    static var previews: some View {
        QRCodeReaderView(data: "none")
    }
}
