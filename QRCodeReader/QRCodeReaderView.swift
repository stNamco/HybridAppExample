//
//  QRCodeReaderView.swift
//  QRCodeReaderView
//
//  Created by kazuhiro nanko on 2020/10/24.
//

import SwiftUI

struct QRCodeReaderView: View {
    
    let data: String
    
    var body: some View {
        Text("Hello, QRCodeReader!: \(data)")
    }
}

struct QRCodeReader_Previews: PreviewProvider {
    static var previews: some View {
        QRCodeReaderView(data: "none")
    }
}
