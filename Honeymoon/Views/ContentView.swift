//
//  ContentView.swift
//  Honeymoon
//
//  Created by Jimmy Ghelani on 2023-10-05.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    @State var showAlert: Bool = false
    @State var showGuide: Bool = false
    @State var showInfo: Bool = false
    
    // MARK: - BODY
    var body: some View {
        VStack {
            HeaderView(showGuideView: $showGuide, showInfoView: $showInfo)
            
            Spacer()
            
            CardView(honeymoon: honeymoonData[1])
            // FIXME: - ADD padding to the cards
                .padding()
            
            Spacer()
            
            FooterView(showBookingAlert: $showAlert)
        } //: VSTACK
        .alert("SUCCESS", isPresented: $showAlert) {
            Button("Happy Honeymoon!") {
                
            }
        } message: {
            Text("Wishing a  lovely and most predcious of the times together for the happy couple!")
        }
    }
}

#Preview {
    ContentView()
}
