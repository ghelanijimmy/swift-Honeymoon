//
//  GuideView.swift
//  Honeymoon
//
//  Created by Jimmy Ghelani on 2023-10-06.
//

import SwiftUI

struct GuideView: View {
    // MARK: - PROPERTIES
    @Environment(\.dismiss) var dismiss
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                HeaderComponent()
                
                Spacer(minLength: 10)
                
                Text("Get Started")
                    .fontWeight(.black)
                    .modifier(TitleModifier())
                
                Text("Discover and pick the perfect destinaiton for your romantic Honeymoon!")
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
                
                Spacer(minLength: 10)
                
                VStack(alignment: .leading, spacing: 25, content: {
                    GuideComponent(
                        title: "Like",
                        subtitle: "Swipe right",
                        description: "Do you like this destination? Touch the screen and swipe right. It will be saved to the favourites",
                        icon: "heart.circle"
                    )
                    
                    GuideComponent(
                        title: "Dismiss",
                        subtitle: "Swipe Left",
                        description: "Would you rather skip this place. Touch the screen and swipe left. You will no longer see it",
                        icon: "xmark.circle"
                    )
                    
                    GuideComponent(
                        title: "Book",
                        subtitle: "Tap the button",
                        description: "Our selection of honeymoon resorts is the perfect setting for you to emabark on your new life together",
                        icon: "checkmark.square"
                    )
                }) //: VSTACK
                
                Spacer(minLength: 10)
                
                Button(action: {
                    dismiss()
                }) {
                    Text("Continue".uppercased())
                        .modifier(ButtonModifier())
                }
            } //: VSTACK
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(.top, 15)
            .padding(.bottom, 25)
            .padding(.horizontal, 25)
        } //: SCROLL
    }
}

#Preview {
    GuideView()
}
