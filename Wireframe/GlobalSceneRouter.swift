//
//  GlobalSceneRouter.swift
//  Wireframe
//
//  Created by kazuhiro nanko on 2020/10/24.
//

import Foundation
import SwiftUI

public class GlobalSceneRouter {
    private let webWirefrmae: WebWireframe
    private let qrWireframe: QRCodeReaderWireframe

    public init(
        webWirefrmae: WebWireframe,
        qrWireframe: QRCodeReaderWireframe
    ) {
        self.webWirefrmae = webWirefrmae
        self.qrWireframe = qrWireframe
    }
    
    public var webView: some View {
        webWirefrmae.generateView().addEnvironment(globalSceneRouter: self)
    }

    public func qrView(data: String) -> some View
    {
        return qrWireframe.generateView(data: data).addEnvironment(globalSceneRouter: self)
    }

    public func replaceWebView() {
        guard let uiScene = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
            return
        }
        uiScene.windows.first?.rootViewController = UIHostingController(rootView: webView)
    }
}

extension View {
    fileprivate func addEnvironment(globalSceneRouter: GlobalSceneRouter)
        -> some View
    {
        self.environment(\.globalSceneRouter, globalSceneRouter)
    }
}

public struct SceneRouterKey: EnvironmentKey {
    public static var defaultValue: GlobalSceneRouter? {
        return nil
    }
}

extension EnvironmentValues {
    public var globalSceneRouter: GlobalSceneRouter? {
        get {
            return self[SceneRouterKey.self]
        }
        set {
            self[SceneRouterKey.self] = newValue
        }
    }
}
