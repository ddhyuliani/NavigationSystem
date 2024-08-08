//
//  MyPetRaceView.swift
//  NavigationStarterSwiftUI
//
//  Created by Dini on 08/08/24.
//

import SwiftUI

struct MyPetRaceView: View {
    var body: some View {
        List {
            NavigationLink(destination: MyPetNameView()) {
                Text("Calico")
            }
            .navigationTitle("My Pet Race")
        }
    }
}

#Preview {
    MyPetRaceView()
}
