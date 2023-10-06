//
//  HeaderComponent.swift
//  Honeymoon
//
//  Created by Jimmy Ghelani on 2023-10-06.
//

import SwiftUI

struct HeaderComponent: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Capsule()
                .frame(width: 120, height: 6)
                .foregroundStyle(.secondary)
                .opacity(0.2)
            
            Image(.logoHoneymoon)
                .resizable()
                .scaledToFit()
                .frame(height: 28)
        } //: VSTACK
    }
}

#Preview {
    HeaderComponent()
}
