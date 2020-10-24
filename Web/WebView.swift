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
    
    @EnvironmentObject var viewModel: WebViewModel
    
    public class Coordinator: NSObject, WKUIDelegate, WKNavigationDelegate {
        var parent: WebView

        init(_ parent: WebView) {
            self.parent = parent
        }
        
        // MARK: - WKUIDelegate
        
        public func webView(_ webView: WKWebView, contextMenuWillPresentForElement elementInfo: WKContextMenuElementInfo) {
            print(webView)
        }
        
        // MARK: - WKNavigationDelegate
        
        public func webView(_ webView: WKWebView,
                     decidePolicyFor navigationAction: WKNavigationAction,
                     decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
            let url = navigationAction.request.url
            print("読み込もうとしているページのURLが取得できる: ", url ?? "")
            decisionHandler(.allow)
        }
    }
    
    public func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    public func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.uiDelegate = context.coordinator
        webView.navigationDelegate = context.coordinator
        return webView
    }
    
    public func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(URLRequest(url: URL(string: urlString)!))
    }
    
    public init(urlString: String) {
        self.urlString = urlString
    }
}

struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView(urlString: "https://www.apple.com")
    }
}
