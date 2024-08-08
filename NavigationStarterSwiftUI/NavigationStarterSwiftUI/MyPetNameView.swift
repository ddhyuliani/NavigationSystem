//
//  MyPetName.swift
//  NavigationStarterSwiftUI
//
//  Created by Dini on 08/08/24.
//

import SwiftUI

struct MyPetNameView: View {
    var body: some View {
        VStack {
            Image("Coco")
                .resizable()
                .scaledToFit()
            Text("Hi I'm Coco")
        }
    }
}

#Preview {
    MyPetNameView()
}
