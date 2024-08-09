//
//  MyPetView.swift
//  NavigationSwiftUI
//
//  Created by Dini on 07/08/24.
//

import SwiftUI

struct Layer1View: View {
    
    @Binding var path: NavigationPath
    @EnvironmentObject var appData: AppData
    
    var body: some View {
        VStack {
            TextField("Enter text for Layer 2", text: $appData.sharedText)
                            .padding()
                            .textFieldStyle(RoundedBorderTextFieldStyle())
            List {
                NavigationLink("Cat", value: NavigationDestination.layer2)
            }
            .navigationTitle("My Pet")
        }
    }
}

#Preview {
    Layer1View(path: .constant(NavigationPath()))
}
