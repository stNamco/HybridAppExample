//
//  ContentView.swift
//  Web
//
//  Created by kazuhiro nanko on 2020/10/24.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.globalSceneRouter) var globalSceneRouter
    @State var isQRPresented: Bool = false
    
    var body: some View {
        VStack{
            WebView(
                urlString: "https://www.apple.com"
            )
            Button(action: {
                print("Button Tapped")
                self.isQRPresented.toggle()
            }){
                Text("QRCodeReader")
            }.sheet(isPresented: self.$isQRPresented) {
                globalSceneRouter?.qrView(data: "cameraのデータ")
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
