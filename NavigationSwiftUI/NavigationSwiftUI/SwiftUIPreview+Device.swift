//
//  SwiftUIPreview+Device.swift
//  NavigationSwiftUI
//
//  Created by Dini on 08/08/24.
//

import Foundation
import SwiftUI

struct DevicePreviewModief: ViewModifier {
    
    enum Device {
        case iPhone
        case iPad
    }
    
    let device: Device
    
    func body(content: Content) -> some View {
        
        switch device {
            
        case .iPad:
            content
                .previewDisplayName("iPad Preview")
                .previewDevice("iPad Pro (12.9-inch) (6th generation)")
                .previewInterfaceOrientation(.landscapeLeft)
        case .iPhone:
            content
                .previewDisplayName("iPhone Preview")
                .previewDevice("iPhone 15")
        }
    }
}

extension View {
    func preview(for device: DevicePreviewModief.Device) -> some View {
        self.modifier(DevicePreviewModief(device: device))
    }
}


