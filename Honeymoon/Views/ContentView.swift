//
//  ContentView.swift
//  Honeymoon
//
//  Created by Jimmy Ghelani on 2023-10-05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CardView(honeymoon: honeymoonData[1])
        .padding()
    }
}

#Preview {
    ContentView()
}
