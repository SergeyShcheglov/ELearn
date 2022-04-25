//
//  ContentView.swift
//  ELearn
//
//  Created by Sergey Shcheglov on 22.04.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Spacer()
            Image("Logo 2")
                .resizable()
                .scaledToFit()
                .frame(width: 26, height: 26)
                .cornerRadius(20)
            
            Text("SwiftUI for iOS 15")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.linearGradient(colors: [.primary, .primary.opacity(0.5)], startPoint: .topLeading, endPoint: .bottomTrailing))
            
            Text("20 sections - 3 hours".uppercased())
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundStyle(.secondary)
            
            Text("Build an iOS app with custom layouts, animations and ..")
                .font(.footnote)
                .multilineTextAlignment(.leading)
                .lineLimit(2)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(.secondary)
        }
        .padding(20)
        .frame(height: 350)
        .background(.ultraThinMaterial)
        .cornerRadius(30)
        .shadow(color: Color("Shadow").opacity(0.3), radius: 10, x: 0, y: 10)
        .padding(.horizontal, 20)
        .background(
            Image("Blob 1")
                .offset(x: 250, y: -100)
        )
        .overlay(
            Image("Illustration 5")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 230)
                .offset(x: 32, y: -80)
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
