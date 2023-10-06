//
//  ButtonModifier.swift
//  Honeymoon
//
//  Created by Jimmy Ghelani on 2023-10-06.
//

import SwiftUI

struct ButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .padding()
            .frame(minWidth: 0, maxWidth: .infinity)
            .background(
                Capsule()
                    .fill(.pink)
            )
            .foregroundStyle(.white)
    }
}
