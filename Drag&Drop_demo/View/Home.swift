//
//  Home.swift
//  Drag&Drop_demo
//
//  Created by vignesh kumar c on 21/09/23.
//

import SwiftUI

struct Home: View {
    
    @StateObject var pageData = PageViewModel()
    @Namespace var animation
    
    let columns = Array(Array(repeating: GridItem(.flexible(), spacing: 45), count: 2))
    
    var body: some View {
        VStack {
            
            HStack {
                Image(systemName: "eyeglasses")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(pageData.selectedTabs == "private" ? .black : .white)
                    .frame(width: 80, height: 45)
                    .background(
                        
                        ZStack {
                            if pageData.selectedTabs != "private" {
                                Color.clear
                            } else {
                                Color.white
                                    .cornerRadius(10)
                                    .matchedGeometryEffect(id: "Tab", in: animation)
                            }
                        }
                        
                    )
                    .cornerRadius(10)
                    .onTapGesture {
                        withAnimation {
                            pageData.selectedTabs = "private"
                        }
                    }
               Text("1")
                    .frame(width: 35, height: 35)
                    .background(RoundedRectangle(cornerRadius: 8).stroke(pageData.selectedTabs == "tabs" ? Color.black : Color.white, lineWidth: 3))
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(pageData.selectedTabs == "tabs" ? .black : .white)
                    .frame(width: 80, height: 45)
                    .background(
                        ZStack {
                            if pageData.selectedTabs != "tabs" {
                                Color.clear
                            } else {
                                Color.white
                                    .cornerRadius(10)
                                    .matchedGeometryEffect(id: "Tab", in: animation)
                            }
                        }
                    )
                    .cornerRadius(10)
                    .onTapGesture {
                        withAnimation {
                            pageData.selectedTabs = "tabs"
                        }
                    }
                Image(systemName: "laptopcomputer")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(pageData.selectedTabs == "device" ? .black : .white)
                    .frame(width: 80, height: 45)
                    .background(
                        ZStack {
                            if pageData.selectedTabs != "device" {
                                Color.clear
                            } else {
                                Color.white
                                    .cornerRadius(10)
                                    .matchedGeometryEffect(id: "Tab", in: animation)
                            }
                        }
                    )
                    .cornerRadius(10)
                    .onTapGesture {
                        withAnimation {
                            pageData.selectedTabs = "device"
                        }
                    }
            }
            .background(Color.white.opacity(0.15))
            .cornerRadius(15)
            .padding(.top, 60)
            
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(pageData.urls) { page in
                        WebView(url: page.url)
                            .frame(height: 200)
                            .cornerRadius(15)
                        
                            .onDrag {
                                
                                pageData.currentPage = page
                                
                                return NSItemProvider(contentsOf: URL(string: "\(page.url)")!)!
                            }
                            .onDrop(of: [.url], delegate: DropViewDelgate(page: page, pageData: pageData))
                    }
                }
                .padding()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black).ignoresSafeArea(.all, edges: .all)
       
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
