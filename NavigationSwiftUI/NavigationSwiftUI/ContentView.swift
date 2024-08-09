//
//  ContentView.swift
//  NavigationSwiftUI
//
//  Created by Dini on 07/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationPathView()
                .tabItem {
                    Label("Pet", systemImage: "pawprint.fill")
                }
            NavSplitView()
                .tabItem {
                    Label("Split", systemImage: "sidebar.left")
                }
            OverlayView()
                .tabItem {
                    Label("Pops", systemImage: "square.stack.3d.down.right.fill")
                }
        }
    }
}

#Preview {
    ContentView()
}
