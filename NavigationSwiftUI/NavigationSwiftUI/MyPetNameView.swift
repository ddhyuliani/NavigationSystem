//
//  MyPetNameView.swift
//  NavigationSwiftUI
//
//  Created by Dini on 07/08/24.
//

import SwiftUI

struct Layer3View: View {
    @Binding var path: NavigationPath
    @EnvironmentObject var appData: AppData
    
    var body: some View {
        VStack {
            Image("Coco")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
            Text("Hi, I'm Coco! and This is the text from Layer 2 \(appData.sharedText)")
        }
        .padding()
        .navigationTitle("My Pet Name")
        
        Button("Back to My Pet") {
            path = NavigationPath()
        }
        .frame(width: 200, height: 50)
        .background(.black)
        .foregroundStyle(.white)
        .clipShape(.capsule)
    }
}

#Preview {
    Layer3View(path: .constant(NavigationPath()))
}
