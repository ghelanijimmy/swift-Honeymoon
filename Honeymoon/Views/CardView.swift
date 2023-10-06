//
//  CardView.swift
//  Honeymoon
//
//  Created by Jimmy Ghelani on 2023-10-06.
//

import SwiftUI

struct CardView: View, Identifiable {
    // MARK: - PROPERTIES
    let id = UUID()
    let honeymoon: Destination
    
    // MARK: - BODY
    var body: some View {
        Image(honeymoon.image)
            .resizable()
            .scaledToFit()
            .clipShape(RoundedRectangle(cornerRadius: 24))
            .frame(minWidth: 0, maxWidth: .infinity)
            .overlay(
                VStack(alignment: .center, spacing: 12) {
                    Text(honeymoon.place.uppercased())
                        .foregroundStyle(.white)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .shadow(radius: 1)
                        .padding(.horizontal, 18)
                        .padding(.bottom, 4)
                        .overlay(
                            Rectangle()
                                .fill(.white)
                                .frame(height: 1),
                            alignment: .bottom
                        )
                    Text(honeymoon.country.uppercased())
                        .foregroundStyle(.black)
                        .font(.footnote)
                        .fontWeight(.bold)
                        .frame(minWidth: 85)
                        .padding(.horizontal)
                        .padding(.vertical, 5)
                        .background(
                            Capsule()
                                .fill(.white)
                        )
                }
                .frame(minWidth: 280)
                .padding(.bottom, 50),
                alignment: .bottom
            )
    }
}

#Preview {
    CardView(honeymoon: honeymoonData[0])
}
