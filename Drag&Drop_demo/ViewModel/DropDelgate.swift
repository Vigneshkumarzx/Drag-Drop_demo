//
//  DropDelgate.swift
//  Drag&Drop_demo
//
//  Created by vignesh kumar c on 21/09/23.
//

import SwiftUI

struct DropViewDelgate: DropDelegate {
    
    var page: Page
    var pageData: PageViewModel
    
    func performDrop(info: DropInfo) -> Bool {
        return true
    }
    
    func dropEntered(info: DropInfo) {
        
        let fromIndex = pageData.urls.firstIndex{ (page) -> Bool in
           return page.id == pageData.currentPage?.id
        } ?? 0
        
        
        let toIndex = pageData.urls.firstIndex{ (page) -> Bool in
            return page.id == self.page.id
        } ?? 0
        
        withAnimation {
            if fromIndex != toIndex {
                let fromPage = pageData.urls[fromIndex]
                pageData.urls[fromIndex] = pageData.urls[toIndex]
                pageData.urls[toIndex] = fromPage
            }
        }
    }
    
    func dropUpdated(info: DropInfo) -> DropProposal? {
        return DropProposal(operation: .move)
    }
}


