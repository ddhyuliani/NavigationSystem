//
//  OverlayView.swift
//  NavigationSwiftUI
//
//  Created by Dini on 08/08/24.
//

import SwiftUI

// Third Tab: OverlayNavigation with Sheet, FullScreenCover, and Alert
struct OverlayView: View {
    @State private var showingSheet = false
    @State private var showingFullScreenCover = false
    @State private var showingAlert = false
    
    let buttons: [(title: String, action: () -> Void)] = [
        ("Show Sheet", {}),
        ("Show FullScreenCover", {}),
        ("Show Alert", {})
    ]
    
    var body: some View {
        VStack(spacing: 20) {
            ForEach(buttons.indices, id: \.self) { index in
                Button(buttons[index].title) {
                    switch index {
                    case 0:
                        showingSheet.toggle()
                    case 1:
                        showingFullScreenCover.toggle()
                    case 2:
                        showingAlert.toggle()
                    default:
                        break
                    }
                }
                .sheet(isPresented: $showingSheet, content: {
                    SheetView()
                })
                .fullScreenCover(isPresented: $showingFullScreenCover, content: {
                    FullScreenModalView()
                })
                .alert("Hello There", isPresented: $showingAlert, actions: {
                    Button("OK", role: .cancel) {}
                })
                .frame(width: 250)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
                
            }
        }
        .navigationTitle("OverlayView")
    }
}

#Preview {
    OverlayView()
}
