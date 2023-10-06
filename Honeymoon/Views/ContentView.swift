//
//  ContentView.swift
//  Honeymoon
//
//  Created by Jimmy Ghelani on 2023-10-05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HeaderView()
            
            Spacer()
            
            CardView(honeymoon: honeymoonData[1])
            // FIXME: - ADD padding to the cards
                .padding()
            
            Spacer()
            
            FooterView()
        } //: VSTACK
    }
}

#Preview {
    ContentView()
}
