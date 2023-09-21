//
//  WebView.swift
//  Drag&Drop_demo
//
//  Created by vignesh kumar c on 21/09/23.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    
    var url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        let view = WKWebView()
    
        view.load(URLRequest(url: url))
        view.transform = CGAffineTransform(scaleX: 0.3, y: 0.3)
        return view
    }
   
    func updateUIView(_ uiView: WKWebView, context: Context) {
        
    }
}


