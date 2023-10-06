//
//  GuideComponent.swift
//  Honeymoon
//
//  Created by Jimmy Ghelani on 2023-10-06.
//

import SwiftUI

struct GuideComponent: View {
    // MARK: - PROPERTIES
    let title: String
    let subtitle: String
    let description: String
    let icon: String
    
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 20, content: {
            Image(systemName: icon)
                .font(.largeTitle)
                .foregroundStyle(.pink)
            
            VStack(alignment: .leading, spacing: 4, content: {
                HStack {
                    Text(title.uppercased())
                        .font(.title)
                        .fontWeight(.heavy)
                    
                    Spacer()
                    
                    Text(subtitle.uppercased())
                        .font(.footnote)
                        .fontWeight(.heavy)
                        .foregroundStyle(.pink)
                }
                
                Divider()
                    .padding(.bottom, 4)
                Text(description)
                    .font(.footnote)
                    .foregroundStyle(.secondary)
                    .fixedSize(horizontal: false, vertical: true)
            })
        })
    }
}

#Preview {
    GuideComponent(title: "Title", subtitle: "Swipe right", description: "This is a placeholder sentense. This is a placeholder sentense. This is a placeholder sentense. This is a placeholder sentense.", icon: "heart.circle")
}
