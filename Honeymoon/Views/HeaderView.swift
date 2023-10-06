//
//  HeaderView.swift
//  Honeymoon
//
//  Created by Jimmy Ghelani on 2023-10-06.
//

import SwiftUI

struct HeaderView: View {
    // MARK: - PROPERTIES
    @Binding var showGuideView: Bool
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Button(action: {
                
            }) {
                Image(systemName: "info.circle")
                    .font(.system(size: 24, weight: .regular))
            }
            .tint(.primary)
            
            Spacer()
            
            Image(.logoHoneymoonPink)
                .resizable()
                .scaledToFit()
                .frame(height: 28)
            
            Spacer()
            
            Button(action: {
                showGuideView.toggle()
            }) {
                Image(systemName: "questionmark.circle")
                    .font(.system(size: 24, weight: .regular))
            }
            .tint(.primary)
            .sheet(isPresented: $showGuideView, content: {
                GuideView()
            })
        } //: HSTACK
        .padding()
    }
}

#Preview {
    HeaderView(showGuideView: .constant(false))
}
