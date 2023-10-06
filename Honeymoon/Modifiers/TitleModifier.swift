//
//  TitleModifier.swift
//  Honeymoon
//
//  Created by Jimmy Ghelani on 2023-10-06.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(.pink)
    }
}
