//
//  StartButtonView.swift
//  Fructose
//
//  Created by Brian Lee on 2021/06/11.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - PROPERTIES
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    // MARK: - BODY
    var body: some View {
        Button(action: {
            isOnboarding = false
        }, label: {
            HStack(spacing: 8){
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)

            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(Capsule().strokeBorder(Color.white, lineWidth: 1.25))
        }) // Button
            .accentColor(Color.white)
    
        //        Button(action: {
        //            print("Exit the onboarding")
        //        }) {
        //            Text("Start")
        //        }
    }
}

// MARK: - PREVIEW
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView().preferredColorScheme(.dark).previewLayout(.sizeThatFits)
    }
}
