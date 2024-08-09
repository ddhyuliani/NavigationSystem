//
//  MyPetRaceView.swift
//  NavigationSwiftUI
//
//  Created by Dini on 07/08/24.
//

import SwiftUI

struct Layer2View: View {
    @Binding var path: NavigationPath
    @EnvironmentObject var appData: AppData
    
    var body: some View {
        
        VStack {
            Text("Layer 2 received: \(appData.sharedText)")
            TextField("Enter text for Layer 3", text: $appData.sharedText)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            List {
                NavigationLink("Calico", value: NavigationDestination.layer3)
            }
            .navigationTitle("My Pet Race")
        }
    }
}

#Preview {
    Layer2View(path: .constant(NavigationPath()))
}
