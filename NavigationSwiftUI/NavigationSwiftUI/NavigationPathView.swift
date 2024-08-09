//
//  NavigationPathView.swift
//  NavigationSwiftUI
//
//  Created by Dini on 07/08/24.
//

import SwiftUI

class AppData: ObservableObject {
    @Published var sharedText: String = ""
}

struct NavigationPathView: View {
    
    @State private var path = NavigationPath()
    @StateObject private var appData = AppData()
    
    var body: some View {
        NavigationStack(path: $path) {
            Layer1View(path: $path)
                .navigationDestination(for: NavigationDestination.self) { destination in
                    switch destination {
                    case .layer2:
                        Layer2View(path: $path)
                    case .layer3:
                        Layer3View(path: $path)
                    default:
                        Text("Unknown destination")
                    }
                }
                .navigationTitle("Navigation Path")
        }
        .environmentObject(appData)
    }
}

#Preview {
    NavigationPathView()
}
