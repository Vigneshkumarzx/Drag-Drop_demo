//
//  PageViewModel.swift
//  Drag&Drop_demo
//
//  Created by vignesh kumar c on 21/09/23.
//

import SwiftUI

class PageViewModel: ObservableObject {
    
@Published var selectedTabs = "tabs"
    
    @Published var urls = [
        
        page(url: URL(string: "https://google.com")!),
        page(url: URL(string: "https://facebook.com")!),
        page(url: URL(string: "https://apple.com")!),
        page(url: URL(string: "https://twitter.com")!),
        page(url: URL(string: "https://gmail.com")!),
        page(url: URL(string: "https://instagram.com")!),
        page(url: URL(string: "https://twitter.com")!),
        page(url: URL(string: "https://instagram.com")!),
        page(url: URL(string: "https://facebook.com")!),
        page(url: URL(string: "https://apple.com")!),
        page(url: URL(string: "https://twitter.com")!),
    ]
}
