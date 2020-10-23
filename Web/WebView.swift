//
//  WebView.swift
//  Web
//
//  Created by kazuhiro nanko on 2020/10/23.
//

import SwiftUI
import WebKit

public struct WebView: UIViewRepresentable {
    public typealias UIViewType = WKWebView
    public let urlString: String
    
    public func makeUIView(context: Context) -> WKWebView {
        print(context)
        return WKWebView()
    }
    
    public func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(URLRequest(url: URL(string: urlString)!))
    }
    
    @EnvironmentObject var viewModel: WebViewModel
    
    public init(urlString: String) {
        self.urlString = urlString
    }
}

struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView(urlString: "https://www.apple.com")
    }
}
