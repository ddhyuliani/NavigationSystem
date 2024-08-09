//
//  FullScreenModalView.swift
//  NavigationSwiftUI
//
//  Created by Dini on 08/08/24.
//

import SwiftUI

struct FullScreenModalView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Color.clear
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("This is a full-screen cover")
                    .font(.title)
                Button("Go Back") {
                    dismiss()
                }
                .frame(width: 100, height: 50)
                .background(Color.blue)
                .clipShape(.buttonBorder)
                .padding()
            }
            .foregroundColor(.black)
        }
    }
}

#Preview {
    FullScreenModalView()
}
