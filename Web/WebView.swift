//
//  WebView.swift
//  Web
//
//  Created by kazuhiro nanko on 2020/10/23.
//

import SwiftUI

public struct WebView: View {
    
    @EnvironmentObject var viewModel: WebViewModel
    
    public var body: some View {
        Text("Hello, WebView!")
    }
    
    public init() {}
}

struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView()
    }
}
