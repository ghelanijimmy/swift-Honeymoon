//
//  FooterView.swift
//  Honeymoon
//
//  Created by Jimmy Ghelani on 2023-10-06.
//

import SwiftUI

struct FooterView: View {
    // MARK: - PROPERTIES
    @Binding var showBookingAlert: Bool
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Button(action: {
                
            }) {
                Image(systemName: "xmark.circle")
                    .font(.system(size: 42, weight: .light))
            }
            .tint(.primary)
            
            Spacer()
            
            Button(action: {
                showBookingAlert.toggle()
            }) {
                Text("Book Destination".uppercased())
                    .font(.system(.subheadline, design: .rounded))
                    .fontWeight(.heavy)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 12)
                    .tint(.pink)
                    .background(
                        Capsule()
                            .stroke(.pink, lineWidth: 2)
                    )
            }
            
            Spacer()
            
            Button(action: {
                
            }) {
                Image(systemName: "heart.circle")
                    .font(.system(size: 42, weight: .light))
            }
            .tint(.primary)
        } //: HSTACK
        .padding()
    }
}

#Preview {
    FooterView(showBookingAlert: .constant(false))
}
