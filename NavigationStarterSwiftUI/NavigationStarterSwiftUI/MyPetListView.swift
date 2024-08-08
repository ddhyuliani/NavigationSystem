//
//  MyPetListView.swift
//  NavigationStarterSwiftUI
//
//  Created by Dini on 08/08/24.
//

import SwiftUI

struct MyPetListView: View {
    
    var body: some View {
        NavigationStack {
            List {
                NavigationLink(destination: MyPetRaceView()) {
                    Text("Cat")
                }
                .navigationTitle("My Pet")
            }
        }
    }
}

#Preview {
    MyPetListView()
}
