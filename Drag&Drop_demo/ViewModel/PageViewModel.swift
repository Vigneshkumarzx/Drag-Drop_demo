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
        
        Page(url: URL(string: "https://google.com")!),
        Page(url: URL(string: "https://facebook.com")!),
        Page(url: URL(string: "https://apple.com")!),
        Page(url: URL(string: "https://twitter.com")!),
        Page(url: URL(string: "https://gmail.com")!),
        Page(url: URL(string: "https://instagram.com")!),
        Page(url: URL(string: "https://twitter.com")!),
        Page(url: URL(string: "https://instagram.com")!),
        Page(url: URL(string: "https://facebook.com")!),
        Page(url: URL(string: "https://apple.com")!),
        Page(url: URL(string: "https://twitter.com")!),
    ]
    
    @Published var currentPage: Page?
}
