//
//  HomeView.swift
//  ELearn
//
//  Created by Sergey Shcheglov on 29.05.2022.
//

import SwiftUI

struct HomeView: View {
    @State private var hasScrolled = false
    var body: some View {
        ScrollView {
            GeometryReader { proxy in
                Color.clear.preference(key: ScrollPreferenceKey.self, value: proxy.frame(in: .named("scroll")).minY)
            }
            .frame(height: 0)
            
            FeaturedItem()
        }
        .coordinateSpace(name: "scroll")
        .onPreferenceChange(ScrollPreferenceKey.self) { value in
            withAnimation(.easeInOut) {
                if value < 0 {
                    hasScrolled = true
                } else {
                    hasScrolled = false
                }
            }
        }
        .safeAreaInset(edge: .top) {
            Color.clear.frame(height: 70)
        }
        .overlay (
            NavigationBar(hasScrolled: $hasScrolled, title: "Featured")
                .opacity(hasScrolled ? 1 : 0)
        )
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
