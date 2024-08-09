//
//  SheetView.swift
//  NavigationSwiftUI
//
//  Created by Dini on 08/08/24.
//

import SwiftUI

struct SheetView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Text("This is a Sheet")
                .font(.title)
            Button("Go Back") {
                dismiss()
            }
            .frame(width: 100, height: 50)
            .background(Color.blue)
            .clipShape(.buttonBorder)
            .padding()
        }
        .foregroundStyle(.black)
    }
}

#Preview {
    SheetView()
}
