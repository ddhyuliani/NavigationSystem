//
//  NavigationSplitView.swift
//  NavigationSwiftUI
//
//  Created by Dini on 07/08/24.
//

import SwiftUI

// Second Tab: NavigationSplitView
struct NavSplitView: View {
    @State private var selectedFolder: String?
    @State private var selectedItem: String?
    @State private var folders = [
        "Cats": ["Calico", "Rataby"],
        "Dogs": ["Chihuahua", "Shiba"]
    ]
    
    var body: some View {
        NavigationSplitView {
            List(folders.keys.sorted(), id: \.self, selection: $selectedFolder) { folder in
                NavigationLink(folder, value: folder)
            }
            .navigationTitle("Pets")
        } content: {
            if let selectedFolder = selectedFolder {
                List(folders[selectedFolder] ?? [], id: \.self, selection: $selectedItem) { item in
                    NavigationLink(item, value: item)
                }
                .navigationTitle(selectedFolder)
            } else {
                Text("Select a Pet")
                    .foregroundColor(.gray)
            }
        } detail: {
            if let selectedItem = selectedItem {
                Text("Detail for \(selectedItem)")
            } else {
                HStack {
                    Text("Tap the side Bar ") + Text(Image(systemName: "sidebar.left"))
                        .font(.system(size: 20))
                        .foregroundStyle(Color.blue)
                    + Text(" on the top left corner")
                }
                .foregroundStyle(Color.gray)
            }
        }
        //.navigationTitle("Pets")
        .navigationSplitViewStyle(.balanced)
    }
}

#Preview {
    NavSplitView()
}

//struct NavSplitView_Preview: PreviewProvider {
//    static var previews: some View {
//        NavigationSplitView {
//            NavSplitView()
//        } detail: {
//            Text("Some content Here")
//        }
//        .preview(for: .iPad)
//        
//        NavigationSplitView {
//            NavSplitView()
//        } detail: {
//            Text("Some content Here")
//        }
//        .preview(for: .iPhone)
//    }  
//}
